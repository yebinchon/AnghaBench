; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_queue_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_queue_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i32 }
%struct.node_queue_opt = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_23__, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"eval_queue_opts: unknown scheduler type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eval_queue_opts(%struct.pf_altq* %0, %struct.node_queue_opt* %1, i32 %2) #0 {
  %4 = alloca %struct.pf_altq*, align 8
  %5 = alloca %struct.node_queue_opt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pf_altq* %0, %struct.pf_altq** %4, align 8
  store %struct.node_queue_opt* %1, %struct.node_queue_opt** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %9 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %258 [
    i32 132, label %11
    i32 128, label %19
    i32 129, label %27
    i32 130, label %160
    i32 131, label %230
  ]

11:                                               ; preds = %3
  %12 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %13 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %17 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  br label %265

19:                                               ; preds = %3
  %20 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %21 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %25 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  br label %265

27:                                               ; preds = %3
  %28 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %29 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %34 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 9
  store i32 %32, i32* %36, align 8
  %37 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %38 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %27
  %45 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %46 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @eval_bwspec(i32* %49, i32 %50)
  %52 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %53 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 8
  store i8* %51, i8** %55, align 8
  %56 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %57 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @eval_bwspec(i32* %60, i32 %61)
  %63 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %64 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 7
  store i8* %62, i8** %66, align 8
  %67 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %68 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %74 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 6
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %44, %27
  %78 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %79 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %77
  %86 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %87 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @eval_bwspec(i32* %90, i32 %91)
  %93 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %94 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  store i8* %92, i8** %96, align 8
  %97 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %98 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %6, align 4
  %103 = call i8* @eval_bwspec(i32* %101, i32 %102)
  %104 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %105 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  store i8* %103, i8** %107, align 8
  %108 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %109 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %115 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 8
  br label %118

118:                                              ; preds = %85, %77
  %119 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %120 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %118
  %127 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %128 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32, i32* %6, align 4
  %133 = call i8* @eval_bwspec(i32* %131, i32 %132)
  %134 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %135 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  store i8* %133, i8** %137, align 8
  %138 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %139 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32, i32* %6, align 4
  %144 = call i8* @eval_bwspec(i32* %142, i32 %143)
  %145 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %146 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  store i8* %144, i8** %148, align 8
  %149 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %150 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %156 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 8
  br label %159

159:                                              ; preds = %126, %118
  br label %265

160:                                              ; preds = %3
  %161 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %162 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %167 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 5
  store i32 %165, i32* %169, align 4
  %170 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %171 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %176 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 4
  store i32 %174, i32* %178, align 8
  %179 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %180 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32, i32* %6, align 4
  %184 = call i8* @eval_bwspec(i32* %182, i32 %183)
  %185 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %186 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 3
  store i8* %184, i8** %188, align 8
  %189 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %190 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %160
  %197 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %198 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  %202 = load i32, i32* %6, align 4
  %203 = call i8* @eval_bwspec(i32* %201, i32 %202)
  %204 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %205 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 2
  store i8* %203, i8** %207, align 8
  %208 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %209 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = load i32, i32* %6, align 4
  %214 = call i8* @eval_bwspec(i32* %212, i32 %213)
  %215 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %216 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  store i8* %214, i8** %218, align 8
  %219 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %220 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %226 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 8
  br label %229

229:                                              ; preds = %196, %160
  br label %265

230:                                              ; preds = %3
  %231 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %232 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %237 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 2
  store i32 %235, i32* %239, align 8
  %240 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %241 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %246 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  store i32 %244, i32* %248, align 4
  %249 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %250 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %255 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  store i32 %253, i32* %257, align 8
  br label %265

258:                                              ; preds = %3
  %259 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %260 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %258, %230, %229, %159, %19, %11
  %266 = load i32, i32* %7, align 4
  ret i32 %266
}

declare dso_local i8* @eval_bwspec(i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
