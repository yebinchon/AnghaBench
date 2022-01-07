; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_hfsc_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_hfsc_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hfsc_opts_v1 }
%struct.hfsc_opts_v1 = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.node_queue_opt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.node_hfsc_sc, %struct.node_hfsc_sc, %struct.node_hfsc_sc }
%struct.node_hfsc_sc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hfsc(\00", align 1
@HFCF_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" red\00", align 1
@HFCF_ECN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" ecn\00", align 1
@HFCF_RIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" rio\00", align 1
@HFCF_CODEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" codel\00", align 1
@HFCF_CLEARDSCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" cleardscp\00", align 1
@HFCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" default\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"linkshare\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"upperlimit\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" ) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_altq*, %struct.node_queue_opt*)* @print_hfsc_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_hfsc_opts(%struct.pf_altq* %0, %struct.node_queue_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_altq*, align 8
  %5 = alloca %struct.node_queue_opt*, align 8
  %6 = alloca %struct.hfsc_opts_v1*, align 8
  %7 = alloca %struct.node_hfsc_sc*, align 8
  %8 = alloca %struct.node_hfsc_sc*, align 8
  %9 = alloca %struct.node_hfsc_sc*, align 8
  store %struct.pf_altq* %0, %struct.pf_altq** %4, align 8
  store %struct.node_queue_opt* %1, %struct.node_queue_opt** %5, align 8
  %10 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %11 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.hfsc_opts_v1* %12, %struct.hfsc_opts_v1** %6, align 8
  %13 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %14 = icmp eq %struct.node_queue_opt* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.node_hfsc_sc* null, %struct.node_hfsc_sc** %9, align 8
  store %struct.node_hfsc_sc* null, %struct.node_hfsc_sc** %8, align 8
  store %struct.node_hfsc_sc* null, %struct.node_hfsc_sc** %7, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %18 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store %struct.node_hfsc_sc* %20, %struct.node_hfsc_sc** %7, align 8
  %21 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %22 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %struct.node_hfsc_sc* %24, %struct.node_hfsc_sc** %8, align 8
  %25 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %26 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.node_hfsc_sc* %28, %struct.node_hfsc_sc** %9, align 8
  br label %29

29:                                               ; preds = %16, %15
  %30 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %31 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %29
  %35 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %36 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %41 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %46 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %183

49:                                               ; preds = %44
  %50 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %51 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %54 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %59 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %183

62:                                               ; preds = %57, %49, %39, %34, %29
  %63 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %65 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HFCF_RED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %74 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HFCF_ECN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %83 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @HFCF_RIO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %92 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HFCF_CODEL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %101 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @HFCF_CLEARDSCP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %110 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HFCF_DEFAULTCLASS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %119 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %124 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %127 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %130 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.node_hfsc_sc*, %struct.node_hfsc_sc** %7, align 8
  %133 = call i32 @print_hfsc_sc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %125, i64 %128, i64 %131, %struct.node_hfsc_sc* %132)
  br label %134

134:                                              ; preds = %122, %117
  %135 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %136 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %134
  %140 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %141 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %144 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %149 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147, %139
  %153 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %154 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %157 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %160 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.node_hfsc_sc*, %struct.node_hfsc_sc** %8, align 8
  %163 = call i32 @print_hfsc_sc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %155, i64 %158, i64 %161, %struct.node_hfsc_sc* %162)
  br label %164

164:                                              ; preds = %152, %147, %134
  %165 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %166 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %171 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %174 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %6, align 8
  %177 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.node_hfsc_sc*, %struct.node_hfsc_sc** %9, align 8
  %180 = call i32 @print_hfsc_sc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %172, i64 %175, i64 %178, %struct.node_hfsc_sc* %179)
  br label %181

181:                                              ; preds = %169, %164
  %182 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %184

183:                                              ; preds = %57, %44
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %181
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_hfsc_sc(i8*, i32, i64, i64, %struct.node_hfsc_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
