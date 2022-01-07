; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_setup_implicit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_setup_implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }
%struct.local_zone = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Bad local-data RR %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"implicit transparent local-zone\00", align 1
@local_zone_transparent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, %struct.config_file*)* @lz_setup_implicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_setup_implicit(%struct.local_zones* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.local_zone*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %23 = call i32 @init_parents(%struct.local_zones* %22)
  %24 = load %struct.config_file*, %struct.config_file** %5, align 8
  %25 = getelementptr inbounds %struct.config_file, %struct.config_file* %24, i32 0, i32 0
  %26 = load %struct.config_strlist*, %struct.config_strlist** %25, align 8
  store %struct.config_strlist* %26, %struct.config_strlist** %6, align 8
  br label %27

27:                                               ; preds = %96, %2
  %28 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %29 = icmp ne %struct.config_strlist* %28, null
  br i1 %29, label %30, label %100

30:                                               ; preds = %27
  %31 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %32 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_rr_nameclass(i32 %33, i32** %14, i64* %15, i64* %16)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %38 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 0, i32* %3, align 4
  br label %144

41:                                               ; preds = %30
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @dname_count_size_labels(i32* %42, i64* %17)
  store i32 %43, i32* %18, align 4
  %44 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %45 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %44, i32 0, i32 0
  %46 = call i32 @lock_rw_rdlock(i32* %45)
  %47 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @local_zones_lookup(%struct.local_zones* %47, i32* %48, i64 %49, i32 %50, i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %15, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i32*, i32** %14, align 8
  store i32* %60, i32** %10, align 8
  %61 = load i64, i64* %17, align 8
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %13, align 4
  store i32 1, i32* %7, align 4
  br label %88

64:                                               ; preds = %55
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @free(i32* %69)
  store i32 1, i32* %8, align 4
  %71 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %72 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %71, i32 0, i32 0
  %73 = call i32 @lock_rw_unlock(i32* %72)
  br label %96

74:                                               ; preds = %64
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @dname_lab_cmp(i32* %75, i32 %76, i32* %77, i32 %78, i32* %19)
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @free(i32* %80)
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %74
  br label %88

88:                                               ; preds = %87, %58
  br label %92

89:                                               ; preds = %41
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @free(i32* %90)
  br label %92

92:                                               ; preds = %89, %88
  %93 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %94 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %93, i32 0, i32 0
  %95 = call i32 @lock_rw_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %68
  %97 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %98 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %97, i32 0, i32 1
  %99 = load %struct.config_strlist*, %struct.config_strlist** %98, align 8
  store %struct.config_strlist* %99, %struct.config_strlist** %6, align 8
  br label %27

100:                                              ; preds = %27
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = load i32*, i32** %10, align 8
  store i32* %104, i32** %20, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @dname_remove_labels(i32** %20, i64* %11, i32 %107)
  %109 = load i32*, i32** %20, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32* @memdup(i32* %109, i64 %110)
  store i32* %111, i32** %20, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @free(i32* %112)
  %114 = load i32*, i32** %20, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %103
  %117 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %144

118:                                              ; preds = %103
  %119 = load i32, i32* @VERB_ALGO, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @log_nametypeclass(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32* %120, i32 0, i64 %121)
  %123 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @local_zone_transparent, align 4
  %128 = load i64, i64* %9, align 8
  %129 = call %struct.local_zone* @lz_enter_zone_dname(%struct.local_zones* %123, i32* %124, i64 %125, i32 %126, i32 %127, i64 %128)
  store %struct.local_zone* %129, %struct.local_zone** %21, align 8
  %130 = icmp ne %struct.local_zone* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %144

132:                                              ; preds = %118
  %133 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %134 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %133, i32 0, i32 0
  %135 = call i32 @lock_rw_unlock(i32* %134)
  br label %136

136:                                              ; preds = %132, %100
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %141 = load %struct.config_file*, %struct.config_file** %5, align 8
  %142 = call i32 @lz_setup_implicit(%struct.local_zones* %140, %struct.config_file* %141)
  store i32 %142, i32* %3, align 4
  br label %144

143:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %139, %131, %116, %36
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @init_parents(%struct.local_zones*) #1

declare dso_local i32 @get_rr_nameclass(i32, i32**, i64*, i64*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i32 @local_zones_lookup(%struct.local_zones*, i32*, i64, i32, i64, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dname_remove_labels(i32**, i64*, i32) #1

declare dso_local i32* @memdup(i32*, i64) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i64) #1

declare dso_local %struct.local_zone* @lz_enter_zone_dname(%struct.local_zones*, i32*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
