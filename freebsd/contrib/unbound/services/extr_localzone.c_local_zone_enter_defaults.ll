; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_enter_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_enter_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { i32, i64 }
%struct.local_zone = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"localhost.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"localhost. 10800 IN NS localhost.\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"localhost. 10800 IN SOA localhost. nobody.invalid. 1 3600 1200 604800 10800\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"localhost. 10800 IN A 127.0.0.1\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"localhost. 10800 IN AAAA ::1\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"out of memory adding default zone\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"127.in-addr.arpa.\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"127.in-addr.arpa. 10800 IN NS localhost.\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"127.in-addr.arpa. 10800 IN SOA localhost. nobody.invalid. 1 3600 1200 604800 10800\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"1.0.0.127.in-addr.arpa. 10800 IN PTR localhost.\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.\00", align 1
@.str.13 = private unnamed_addr constant [97 x i8] c"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN NS localhost.\00", align 1
@.str.14 = private unnamed_addr constant [139 x i8] c"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN SOA localhost. nobody.invalid. 1 3600 1200 604800 10800\00", align 1
@.str.15 = private unnamed_addr constant [98 x i8] c"1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa. 10800 IN PTR localhost.\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"onion.\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"test.\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"invalid.\00", align 1
@as112_zones = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zone_enter_defaults(%struct.local_zones* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca i8**, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %178

13:                                               ; preds = %2
  %14 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %15 = call i32 @lz_exists(%struct.local_zones* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  %18 = load %struct.config_file*, %struct.config_file** %5, align 8
  %19 = call i32 @lz_nodefault(%struct.config_file* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %23 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %24 = call %struct.local_zone* @lz_enter_zone(%struct.local_zones* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store %struct.local_zone* %24, %struct.local_zone** %6, align 8
  %25 = icmp ne %struct.local_zone* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %28 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %32 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %36 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %40 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %34, %30, %26, %21
  %43 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %45 = icmp ne %struct.local_zone* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %48 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %47, i32 0, i32 0
  %49 = call i32 @lock_rw_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %42
  store i32 0, i32* %3, align 4
  br label %178

51:                                               ; preds = %38
  %52 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %53 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %52, i32 0, i32 0
  %54 = call i32 @lock_rw_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %17, %13
  %56 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %57 = call i32 @lz_exists(%struct.local_zones* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %55
  %60 = load %struct.config_file*, %struct.config_file** %5, align 8
  %61 = call i32 @lz_nodefault(%struct.config_file* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %59
  %64 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %65 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %66 = call %struct.local_zone* @lz_enter_zone(%struct.local_zones* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  store %struct.local_zone* %66, %struct.local_zone** %6, align 8
  %67 = icmp ne %struct.local_zone* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %70 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %74 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %73, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %78 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76, %72, %68, %63
  %81 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %82 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %83 = icmp ne %struct.local_zone* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %86 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %85, i32 0, i32 0
  %87 = call i32 @lock_rw_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %80
  store i32 0, i32* %3, align 4
  br label %178

89:                                               ; preds = %76
  %90 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %91 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %90, i32 0, i32 0
  %92 = call i32 @lock_rw_unlock(i32* %91)
  br label %93

93:                                               ; preds = %89, %59, %55
  %94 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %95 = call i32 @lz_exists(%struct.local_zones* %94, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %131, label %97

97:                                               ; preds = %93
  %98 = load %struct.config_file*, %struct.config_file** %5, align 8
  %99 = call i32 @lz_nodefault(%struct.config_file* %98, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %97
  %102 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %103 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %104 = call %struct.local_zone* @lz_enter_zone(%struct.local_zones* %102, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  store %struct.local_zone* %104, %struct.local_zone** %6, align 8
  %105 = icmp ne %struct.local_zone* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %108 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %107, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.13, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %112 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %111, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.14, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %116 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %115, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.15, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %114, %110, %106, %101
  %119 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %120 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %121 = icmp ne %struct.local_zone* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %124 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %123, i32 0, i32 0
  %125 = call i32 @lock_rw_unlock(i32* %124)
  br label %126

126:                                              ; preds = %122, %118
  store i32 0, i32* %3, align 4
  br label %178

127:                                              ; preds = %114
  %128 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %129 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %128, i32 0, i32 0
  %130 = call i32 @lock_rw_unlock(i32* %129)
  br label %131

131:                                              ; preds = %127, %97, %93
  %132 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %133 = load %struct.config_file*, %struct.config_file** %5, align 8
  %134 = call i32 @add_empty_default(%struct.local_zones* %132, %struct.config_file* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

138:                                              ; preds = %131
  %139 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %140 = load %struct.config_file*, %struct.config_file** %5, align 8
  %141 = call i32 @add_empty_default(%struct.local_zones* %139, %struct.config_file* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

145:                                              ; preds = %138
  %146 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %147 = load %struct.config_file*, %struct.config_file** %5, align 8
  %148 = call i32 @add_empty_default(%struct.local_zones* %146, %struct.config_file* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

152:                                              ; preds = %145
  %153 = load %struct.config_file*, %struct.config_file** %5, align 8
  %154 = getelementptr inbounds %struct.config_file, %struct.config_file* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %152
  %158 = load i8**, i8*** @as112_zones, align 8
  store i8** %158, i8*** %7, align 8
  br label %159

159:                                              ; preds = %173, %157
  %160 = load i8**, i8*** %7, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %165 = load %struct.config_file*, %struct.config_file** %5, align 8
  %166 = load i8**, i8*** %7, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @add_empty_default(%struct.local_zones* %164, %struct.config_file* %165, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %163
  %171 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172
  %174 = load i8**, i8*** %7, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %7, align 8
  br label %159

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176, %152
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %170, %150, %143, %136, %126, %88, %50, %12
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @lz_exists(%struct.local_zones*, i8*) #1

declare dso_local i32 @lz_nodefault(%struct.config_file*, i8*) #1

declare dso_local %struct.local_zone* @lz_enter_zone(%struct.local_zones*, i8*, i8*, i32) #1

declare dso_local i32 @lz_enter_rr_into_zone(%struct.local_zone*, i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @add_empty_default(%struct.local_zones*, %struct.config_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
