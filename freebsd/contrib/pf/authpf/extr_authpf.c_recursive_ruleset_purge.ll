; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_recursive_ruleset_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_recursive_ruleset_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_trans_e = type { i32, i32, i32, i8*, i8*, i32, i8*, %struct.pfioc_trans_e* }
%struct.pfioc_trans = type { i32, i32, i32, i8*, i8*, i32, i8*, %struct.pfioc_trans* }
%struct.pfioc_ruleset = type { i32, i32, i32, i8*, i8*, i32, i8*, %struct.pfioc_ruleset* }

@errno = common dso_local global i64 0, align 8
@PF_RULESET_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PF_RULESET_TABLE = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCXBEGIN = common dso_local global i32 0, align 4
@DIOCXCOMMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@DIOCGETRULESETS = common dso_local global i32 0, align 4
@DIOCGETRULESET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @recursive_ruleset_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_ruleset_purge(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfioc_trans_e*, align 8
  %6 = alloca %struct.pfioc_trans*, align 8
  %7 = alloca %struct.pfioc_ruleset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.pfioc_trans_e* null, %struct.pfioc_trans_e** %5, align 8
  store %struct.pfioc_trans* null, %struct.pfioc_trans** %6, align 8
  store %struct.pfioc_ruleset* null, %struct.pfioc_ruleset** %7, align 8
  store i64 0, i64* @errno, align 8
  %10 = call %struct.pfioc_trans_e* @calloc(i32 1, i32 56)
  %11 = bitcast %struct.pfioc_trans_e* %10 to %struct.pfioc_trans*
  store %struct.pfioc_trans* %11, %struct.pfioc_trans** %6, align 8
  %12 = icmp eq %struct.pfioc_trans* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %136

14:                                               ; preds = %2
  %15 = load i32, i32* @PF_RULESET_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = call %struct.pfioc_trans_e* @calloc(i32 %16, i32 56)
  store %struct.pfioc_trans_e* %17, %struct.pfioc_trans_e** %5, align 8
  %18 = icmp eq %struct.pfioc_trans_e* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %136

20:                                               ; preds = %14
  %21 = load i32, i32* @PF_RULESET_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %24 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %26 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %25, i32 0, i32 1
  store i32 56, i32* %26, align 4
  %27 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %5, align 8
  %28 = bitcast %struct.pfioc_trans_e* %27 to %struct.pfioc_trans*
  %29 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %30 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %29, i32 0, i32 7
  store %struct.pfioc_trans* %28, %struct.pfioc_trans** %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %52, %20
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PF_RULESET_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %38, i64 %40
  %42 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 8
  %43 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %43, i64 %45
  %47 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @snprintf(i8* %48, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* @PF_RULESET_TABLE, align 4
  %57 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %5, align 8
  %58 = load i32, i32* @PF_RULESET_MAX, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %57, i64 %59
  %61 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* @dev, align 4
  %63 = load i32, i32* @DIOCXBEGIN, align 4
  %64 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %65 = bitcast %struct.pfioc_trans* %64 to %struct.pfioc_trans_e*
  %66 = call i64 @ioctl(i32 %62, i32 %63, %struct.pfioc_trans_e* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @dev, align 4
  %70 = load i32, i32* @DIOCXCOMMIT, align 4
  %71 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %72 = bitcast %struct.pfioc_trans* %71 to %struct.pfioc_trans_e*
  %73 = call i64 @ioctl(i32 %69, i32 %70, %struct.pfioc_trans_e* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68, %55
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINVAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %144

80:                                               ; preds = %75, %68
  %81 = call %struct.pfioc_trans_e* @calloc(i32 1, i32 56)
  %82 = bitcast %struct.pfioc_trans_e* %81 to %struct.pfioc_ruleset*
  store %struct.pfioc_ruleset* %82, %struct.pfioc_ruleset** %7, align 8
  %83 = icmp eq %struct.pfioc_ruleset* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %136

85:                                               ; preds = %80
  %86 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %87 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @snprintf(i8* %88, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %89, i8* %90)
  %92 = load i32, i32* @dev, align 4
  %93 = load i32, i32* @DIOCGETRULESETS, align 4
  %94 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %95 = bitcast %struct.pfioc_ruleset* %94 to %struct.pfioc_trans_e*
  %96 = call i64 @ioctl(i32 %92, i32 %93, %struct.pfioc_trans_e* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EINVAL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %144

103:                                              ; preds = %98
  store i64 0, i64* @errno, align 8
  br label %135

104:                                              ; preds = %85
  %105 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %106 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %131, %104
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %113 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %112, i32 0, i32 5
  store i32 0, i32* %113, align 8
  %114 = load i32, i32* @dev, align 4
  %115 = load i32, i32* @DIOCGETRULESET, align 4
  %116 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %117 = bitcast %struct.pfioc_ruleset* %116 to %struct.pfioc_trans_e*
  %118 = call i64 @ioctl(i32 %114, i32 %115, %struct.pfioc_trans_e* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %144

121:                                              ; preds = %111
  %122 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %123 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %126 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @recursive_ruleset_purge(i8* %124, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %144

131:                                              ; preds = %121
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %9, align 4
  br label %108

134:                                              ; preds = %108
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135, %84, %19, %13
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @ENOMEM, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG_ERR, align 4
  %142 = call i32 @syslog(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %143, %130, %120, %102, %79
  %145 = load %struct.pfioc_trans*, %struct.pfioc_trans** %6, align 8
  %146 = bitcast %struct.pfioc_trans* %145 to %struct.pfioc_trans_e*
  %147 = call i32 @free(%struct.pfioc_trans_e* %146)
  %148 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %5, align 8
  %149 = call i32 @free(%struct.pfioc_trans_e* %148)
  %150 = load %struct.pfioc_ruleset*, %struct.pfioc_ruleset** %7, align 8
  %151 = bitcast %struct.pfioc_ruleset* %150 to %struct.pfioc_trans_e*
  %152 = call i32 @free(%struct.pfioc_trans_e* %151)
  %153 = load i64, i64* @errno, align 8
  %154 = trunc i64 %153 to i32
  ret i32 %154
}

declare dso_local %struct.pfioc_trans_e* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_trans_e*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @free(%struct.pfioc_trans_e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
