; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_send_or_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_send_or_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, %struct.TYPE_4__*, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.module_env = type { i32* }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"auth zone %s probe next target lookup\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"auth zone %s probe: notify addrs updated\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"auth zone %s probe: finished only_lookup\00", align 1
@AUTH_PROBE_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"auth_zone %s unchanged, new lease, wait\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"auth zone %s soa probe failed, wait to retry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*)* @xfr_probe_send_or_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_probe_send_or_end(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  br label %10

10:                                               ; preds = %39, %2
  %11 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %12 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %19 = load %struct.module_env*, %struct.module_env** %4, align 8
  %20 = call i64 @xfr_probe_lookup_host(%struct.auth_xfer* %18, %struct.module_env* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i64, i64* @verbosity, align 8
  %24 = load i64, i64* @VERB_ALGO, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 @dname_str(i32 %29, i8* %30)
  %32 = load i64, i64* @VERB_ALGO, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %34 = call i32 @verbose(i64 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %26, %22
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 0
  %38 = call i32 @lock_basic_unlock(i32* %37)
  br label %195

39:                                               ; preds = %17
  %40 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %41 = load %struct.module_env*, %struct.module_env** %4, align 8
  %42 = call i32 @xfr_probe_move_to_next_lookup(%struct.auth_xfer* %40, %struct.module_env* %41)
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %45 = call i32 @probe_copy_masters_for_allow_notify(%struct.auth_xfer* %44)
  %46 = load i64, i64* @verbosity, align 8
  %47 = load i64, i64* @VERB_ALGO, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %51 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %54 = call i32 @dname_str(i32 %52, i8* %53)
  %55 = load i64, i64* @VERB_ALGO, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %57 = call i32 @verbose(i64 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %60 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %59, i32 0, i32 5
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %58
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* @verbosity, align 8
  %71 = load i64, i64* @VERB_ALGO, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %75 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %78 = call i32 @dname_str(i32 %76, i8* %77)
  %79 = load i64, i64* @VERB_ALGO, align 8
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %81 = call i32 @verbose(i64 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %73, %65
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %84 = call i32 @xfr_probe_disown(%struct.auth_xfer* %83)
  %85 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %86 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %93 = load %struct.module_env*, %struct.module_env** %4, align 8
  %94 = call i32 @xfr_set_timeout(%struct.auth_xfer* %92, %struct.module_env* %93, i32 0, i32 0)
  br label %95

95:                                               ; preds = %91, %82
  %96 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %97 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %96, i32 0, i32 0
  %98 = call i32 @lock_basic_unlock(i32* %97)
  br label %195

99:                                               ; preds = %58
  br label %100

100:                                              ; preds = %115, %99
  %101 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %102 = call i32 @xfr_probe_end_of_list(%struct.auth_xfer* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %107 = load %struct.module_env*, %struct.module_env** %4, align 8
  %108 = load i32, i32* @AUTH_PROBE_TIMEOUT, align 4
  %109 = call i64 @xfr_probe_send_probe(%struct.auth_xfer* %106, %struct.module_env* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %113 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %112, i32 0, i32 0
  %114 = call i32 @lock_basic_unlock(i32* %113)
  br label %195

115:                                              ; preds = %105
  %116 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %117 = call i32 @xfr_probe_nextmaster(%struct.auth_xfer* %116)
  br label %100

118:                                              ; preds = %100
  %119 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %120 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %119, i32 0, i32 5
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %118
  %126 = load i64, i64* @verbosity, align 8
  %127 = load i64, i64* @VERB_ALGO, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %131 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %134 = call i32 @dname_str(i32 %132, i8* %133)
  %135 = load i64, i64* @VERB_ALGO, align 8
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %137 = call i32 @verbose(i64 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %129, %125
  %139 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %140 = call i32 @xfr_probe_disown(%struct.auth_xfer* %139)
  %141 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %142 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load %struct.module_env*, %struct.module_env** %4, align 8
  %147 = getelementptr inbounds %struct.module_env, %struct.module_env* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %151 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %154 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %161 = load %struct.module_env*, %struct.module_env** %4, align 8
  %162 = call i32 @xfr_set_timeout(%struct.auth_xfer* %160, %struct.module_env* %161, i32 0, i32 0)
  br label %163

163:                                              ; preds = %159, %152
  br label %191

164:                                              ; preds = %118
  %165 = load i64, i64* @verbosity, align 8
  %166 = load i64, i64* @VERB_ALGO, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %170 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %173 = call i32 @dname_str(i32 %171, i8* %172)
  %174 = load i64, i64* @VERB_ALGO, align 8
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %176 = call i32 @verbose(i64 %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %168, %164
  %178 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %179 = call i32 @xfr_probe_disown(%struct.auth_xfer* %178)
  %180 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %181 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %188 = load %struct.module_env*, %struct.module_env** %4, align 8
  %189 = call i32 @xfr_set_timeout(%struct.auth_xfer* %187, %struct.module_env* %188, i32 1, i32 0)
  br label %190

190:                                              ; preds = %186, %177
  br label %191

191:                                              ; preds = %190, %163
  %192 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %193 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %192, i32 0, i32 0
  %194 = call i32 @lock_basic_unlock(i32* %193)
  br label %195

195:                                              ; preds = %191, %111, %95, %35
  ret void
}

declare dso_local i64 @xfr_probe_lookup_host(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfr_probe_move_to_next_lookup(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @probe_copy_masters_for_allow_notify(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_probe_disown(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_set_timeout(%struct.auth_xfer*, %struct.module_env*, i32, i32) #1

declare dso_local i32 @xfr_probe_end_of_list(%struct.auth_xfer*) #1

declare dso_local i64 @xfr_probe_send_probe(%struct.auth_xfer*, %struct.module_env*, i32) #1

declare dso_local i32 @xfr_probe_nextmaster(%struct.auth_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
