; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_find_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_find_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.kadm5_pw_policy_check_func* }
%struct.kadm5_pw_policy_check_func = type { i8* }
%struct.TYPE_4__ = type { %struct.kadm5_pw_policy_check_func* }

@num_verifiers = common dso_local global i32 0, align 4
@verifiers = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@builtin_verifier = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kadm5_pw_policy_check_func* (i32, i8*)* @find_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kadm5_pw_policy_check_func* @find_func(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.kadm5_pw_policy_check_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kadm5_pw_policy_check_func*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store %struct.kadm5_pw_policy_check_func* null, %struct.kadm5_pw_policy_check_func** %3, align 8
  br label %134

30:                                               ; preds = %16
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @strlcpy(i8* %31, i8* %32, i64 %33)
  br label %37

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %35, %30
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %90, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @num_verifiers, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @verifiers, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %46, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %90

57:                                               ; preds = %45, %42
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @verifiers, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %63, align 8
  store %struct.kadm5_pw_policy_check_func* %64, %struct.kadm5_pw_policy_check_func** %6, align 8
  br label %65

65:                                               ; preds = %86, %57
  %66 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %67 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %73 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %71, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  store %struct.kadm5_pw_policy_check_func* %84, %struct.kadm5_pw_policy_check_func** %3, align 8
  br label %134

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %88 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %87, i32 1
  store %struct.kadm5_pw_policy_check_func* %88, %struct.kadm5_pw_policy_check_func** %6, align 8
  br label %65

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89, %56
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %38

93:                                               ; preds = %38
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %96, %93
  %101 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @builtin_verifier, i32 0, i32 0), align 8
  store %struct.kadm5_pw_policy_check_func* %101, %struct.kadm5_pw_policy_check_func** %6, align 8
  br label %102

102:                                              ; preds = %123, %100
  %103 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %104 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %110 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %108, i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i8*, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  store %struct.kadm5_pw_policy_check_func* %121, %struct.kadm5_pw_policy_check_func** %3, align 8
  br label %134

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %6, align 8
  %125 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %124, i32 1
  store %struct.kadm5_pw_policy_check_func* %125, %struct.kadm5_pw_policy_check_func** %6, align 8
  br label %102

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %96
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  store %struct.kadm5_pw_policy_check_func* null, %struct.kadm5_pw_policy_check_func** %3, align 8
  br label %134

134:                                              ; preds = %133, %120, %83, %29
  %135 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %3, align 8
  ret %struct.kadm5_pw_policy_check_func* %135
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
