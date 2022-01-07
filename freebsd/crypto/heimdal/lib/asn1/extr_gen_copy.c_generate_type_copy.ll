; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_copy.c_generate_type_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_copy.c_generate_type_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@used_fail = common dso_local global i64 0, align 8
@codefile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"int ASN1CALL\0Acopy_%s(const %s *from, %s *to)\0A{\0Amemset(to, 0, sizeof(*to));\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"return 0;\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"fail:\0Afree_%s(to);\0Areturn ENOMEM;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_type_copy(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @preserve_type(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  store i64 0, i64* @used_fail, align 8
  %15 = load i32, i32* @codefile, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21, i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @copy_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @codefile, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i64, i64* @used_fail, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %13
  %36 = load i32, i32* @codefile, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %13
  %42 = load i32, i32* @codefile, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @preserve_type(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @copy_type(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
