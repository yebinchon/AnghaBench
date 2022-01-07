; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globtilde.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globtilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.passwd = type { i8* }

@CHAR_TILDE = common dso_local global i64 0, align 8
@GLOB_TILDE = common dso_local global i32 0, align 4
@CHAR_SLASH = common dso_local global i64 0, align 8
@CHAR_EOS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*, %struct.TYPE_3__*)* @globtilde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @globtilde(i64* %0, i64* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHAR_TILDE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GLOB_TILDE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16, %3
  %24 = load i64*, i64** %5, align 8
  store i64* %24, i64** %4, align 8
  br label %114

25:                                               ; preds = %16
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64* %27, i64** %10, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = bitcast i64* %28 to i8*
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %42, %25
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHAR_SLASH, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %49

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %10, align 8
  %45 = load i64, i64* %43, align 8
  %46 = trunc i64 %45 to i8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  br label %30

49:                                               ; preds = %39
  %50 = load i8, i8* @CHAR_EOS, align 1
  %51 = load i8*, i8** %9, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i64*, i64** %6, align 8
  %53 = bitcast i64* %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @CHAR_EOS, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %9, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = call i32 (...) @getuid()
  %65 = call %struct.passwd* @k_getpwuid(i32 %64)
  store %struct.passwd* %65, %struct.passwd** %8, align 8
  %66 = icmp eq %struct.passwd* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64*, i64** %5, align 8
  store i64* %68, i64** %4, align 8
  br label %114

69:                                               ; preds = %63
  %70 = load %struct.passwd*, %struct.passwd** %8, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %60
  br label %87

75:                                               ; preds = %49
  %76 = load i64*, i64** %6, align 8
  %77 = bitcast i64* %76 to i8*
  %78 = call %struct.passwd* @k_getpwnam(i8* %77)
  store %struct.passwd* %78, %struct.passwd** %8, align 8
  %79 = icmp eq %struct.passwd* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64*, i64** %5, align 8
  store i64* %81, i64** %4, align 8
  br label %114

82:                                               ; preds = %75
  %83 = load %struct.passwd*, %struct.passwd** %8, align 8
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i64*, i64** %6, align 8
  store i64* %88, i64** %11, align 8
  br label %89

89:                                               ; preds = %94, %87
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  %97 = load i8, i8* %95, align 1
  %98 = sext i8 %97 to i64
  %99 = load i64*, i64** %11, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %11, align 8
  store i64 %98, i64* %99, align 8
  br label %89

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %111, %101
  %103 = load i64*, i64** %10, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %10, align 8
  %105 = load i64, i64* %103, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %11, align 8
  store i64 %105, i64* %106, align 8
  %108 = load i8, i8* @CHAR_EOS, align 1
  %109 = sext i8 %108 to i64
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %102

112:                                              ; preds = %102
  %113 = load i64*, i64** %6, align 8
  store i64* %113, i64** %4, align 8
  br label %114

114:                                              ; preds = %112, %80, %67, %23
  %115 = load i64*, i64** %4, align 8
  ret i64* %115
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @k_getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local %struct.passwd* @k_getpwnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
