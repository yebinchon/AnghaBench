; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_print_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_print_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64* }

@.str = private unnamed_addr constant [26 x i8] c"find objects: attrs: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"  type: \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"token attribute wrong length\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"token: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"class attribute wrong length\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"secret key\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"domain parameters\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"[class %lx]\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"[unknown 0x%08lx]\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @print_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attributes(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %8)
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %97, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %100

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %87 [
    i32 134, label %21
    i32 138, label %43
    i32 135, label %77
    i32 136, label %79
    i32 139, label %81
    i32 133, label %83
    i32 137, label %85
  ]

21:                                               ; preds = %14
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 8
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @application_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %95

31:                                               ; preds = %21
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %6, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %42 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %95

43:                                               ; preds = %14
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @application_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %95

53:                                               ; preds = %43
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  store i64* %58, i64** %7, align 8
  %59 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %72 [
    i64 132, label %62
    i64 129, label %64
    i64 130, label %66
    i64 128, label %68
    i64 131, label %70
  ]

62:                                               ; preds = %53
  %63 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %76

64:                                               ; preds = %53
  %65 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %76

66:                                               ; preds = %53
  %67 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %76

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %76

70:                                               ; preds = %53
  %71 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %76

72:                                               ; preds = %53
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %72, %70, %68, %66, %64, %62
  br label %95

77:                                               ; preds = %14
  %78 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %95

79:                                               ; preds = %14
  %80 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %95

81:                                               ; preds = %14
  %82 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %95

83:                                               ; preds = %14
  %84 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %95

85:                                               ; preds = %14
  %86 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %95

87:                                               ; preds = %14
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %87, %85, %83, %81, %79, %77, %76, %51, %31, %29
  %96 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %10

100:                                              ; preds = %10
  ret void
}

declare dso_local i32 @st_logf(i8*, ...) #1

declare dso_local i32 @application_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
