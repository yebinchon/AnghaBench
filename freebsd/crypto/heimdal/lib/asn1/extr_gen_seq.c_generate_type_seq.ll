; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_seq.c_generate_type_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_seq.c_generate_type_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8* }

@TTag = common dso_local global i64 0, align 8
@TSequenceOf = common dso_local global i64 0, align 8
@TSetOf = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s not seq of %d\0A\00", align 1
@TType = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"%s subtype is not a type, can't generate sequence code for this case: %d\0A\00", align 1
@headerfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [108 x i8] c"ASN1EXP int   ASN1CALL add_%s  (%s *, const %s *);\0AASN1EXP int   ASN1CALL remove_%s  (%s *, unsigned int);\0A\00", align 1
@codefile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"int ASN1CALL\0Aadd_%s(%s *data, const %s *element)\0A{\0A\00", align 1
@.str.4 = private unnamed_addr constant [231 x i8] c"int ret;\0Avoid *ptr;\0A\0Aptr = realloc(data->val, \0A\09(data->len + 1) * sizeof(data->val[0]));\0Aif (ptr == NULL) return ENOMEM;\0Adata->val = ptr;\0A\0Aret = copy_%s(element, &data->val[data->len]);\0Aif (ret) return ret;\0Adata->len++;\0Areturn 0;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"int ASN1CALL\0Aremove_%s(%s *data, unsigned int element)\0A{\0A\00", align 1
@.str.7 = private unnamed_addr constant [374 x i8] c"void *ptr;\0A\0Aif (data->len == 0 || element >= data->len)\0A\09return ASN1_OVERRUN;\0Afree_%s(&data->val[element]);\0Adata->len--;\0Aif (element < data->len)\0A\09memmove(&data->val[element], &data->val[element + 1], \0A\09\09sizeof(data->val[0]) * (data->len - element));\0Aptr = realloc(data->val, data->len * sizeof(data->val[0]));\0Aif (ptr != NULL || data->len == 0) data->val = ptr;\0Areturn 0;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_type_seq(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @seq_type(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %118

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  br label %15

15:                                               ; preds = %21, %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTag, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %4, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSequenceOf, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TSetOf, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %45)
  br label %118

47:                                               ; preds = %31, %25
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TType, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %47
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %3, align 8
  %76 = load i32, i32* @headerfile, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %82, i8* %83, i8* %86, i8* %89)
  %91 = load i32, i32* @codefile, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %97, i8* %98)
  %100 = load i32, i32* @codefile, align 4
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @codefile, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @codefile, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %108, i8* %111)
  %113 = load i32, i32* @codefile, align 4
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([374 x i8], [374 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* @codefile, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %68, %37, %10
  ret void
}

declare dso_local i32 @seq_type(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
