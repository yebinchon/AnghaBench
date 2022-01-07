; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_generate_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_generate_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32 }

@one_code_file = common dso_local global i32 0, align 4
@template_flag = common dso_local global i64 0, align 8
@headerfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"ASN1EXP \00", align 1
@privheaderfile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"%sint    ASN1CALL decode_%s(const unsigned char *, size_t, %s *, size_t *);\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"%sint    ASN1CALL encode_%s(unsigned char *, size_t, const %s *, size_t *);\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%ssize_t ASN1CALL length_%s(const %s *);\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%sint    ASN1CALL copy_%s  (const %s *, %s *);\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%svoid   ASN1CALL free_%s  (%s *);\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@codefile = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_type(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load i32, i32* @one_code_file, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @generate_header_of_codefile(i8* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i32 @generate_type_header(%struct.TYPE_12__* %13)
  %15 = load i64, i64* @template_flag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @generate_template(%struct.TYPE_12__* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i64, i64* @template_flag, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = call i64 @is_template_compat(%struct.TYPE_12__* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23, %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @generate_type_encode(%struct.TYPE_12__* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = call i32 @generate_type_decode(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = call i32 @generate_type_free(%struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = call i32 @generate_type_length(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = call i32 @generate_type_copy(%struct.TYPE_12__* %36)
  br label %38

38:                                               ; preds = %27, %23
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = call i32 @generate_type_seq(%struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @generate_glue(i32 %43, i8* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @is_export(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32*, i32** @headerfile, align 8
  store i32* %54, i32** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %57

55:                                               ; preds = %38
  %56 = load i32*, i32** @privheaderfile, align 8
  store i32* %56, i32** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32*, i32** %3, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %62, i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %71, i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %80, i8* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %89, i8* %92, i8* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %98, i8* %101, i8* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* @one_code_file, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %57
  %111 = load i32*, i32** @codefile, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 (...) @close_codefile()
  br label %114

114:                                              ; preds = %110, %57
  ret void
}

declare dso_local i32 @generate_header_of_codefile(i8*) #1

declare dso_local i32 @generate_type_header(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_template(%struct.TYPE_12__*) #1

declare dso_local i64 @is_template_compat(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_encode(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_decode(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_free(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_length(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_copy(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_type_seq(%struct.TYPE_12__*) #1

declare dso_local i32 @generate_glue(i32, i8*) #1

declare dso_local i64 @is_export(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @close_codefile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
