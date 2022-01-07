; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_stats_info = type { i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64*, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@UB_STATS_QTYPE_NUM = common dso_local global i32 0, align 4
@UB_STATS_QCLASS_NUM = common dso_local global i32 0, align 4
@UB_STATS_OPCODE_NUM = common dso_local global i32 0, align 4
@UB_STATS_RCODE_NUM = common dso_local global i32 0, align 4
@NUM_BUCKETS_HIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_add(%struct.ub_stats_info* %0, %struct.ub_stats_info* %1) #0 {
  %3 = alloca %struct.ub_stats_info*, align 8
  %4 = alloca %struct.ub_stats_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ub_stats_info* %0, %struct.ub_stats_info** %3, align 8
  store %struct.ub_stats_info* %1, %struct.ub_stats_info** %4, align 8
  %6 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %7 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 39
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %11 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 39
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %9
  store i64 %14, i64* %12, align 8
  %15 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %16 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 38
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %20 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 38
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %18
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %25 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 37
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %29 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 37
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %27
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %34 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 36
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %38 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 36
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %43 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 35
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %47 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 35
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %45
  store i64 %50, i64* %48, align 8
  %51 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %52 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %56 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %2
  %61 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %62 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %66 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %2
  %69 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %70 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 30
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %421

74:                                               ; preds = %68
  %75 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %76 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 29
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %80 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 29
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %78
  store i64 %83, i64* %81, align 8
  %84 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %85 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 28
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %89 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 28
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %87
  store i64 %92, i64* %90, align 8
  %93 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %94 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 27
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %98 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 27
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %96
  store i64 %101, i64* %99, align 8
  %102 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %103 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 26
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %107 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 26
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %112 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 25
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %116 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 25
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %121 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 24
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %125 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 24
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %130 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 23
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %134 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 23
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %139 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 22
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %143 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 22
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %141
  store i64 %146, i64* %144, align 8
  %147 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %148 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 21
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %152 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 21
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %150
  store i64 %155, i64* %153, align 8
  %156 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %157 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 20
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %161 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 20
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %159
  store i64 %164, i64* %162, align 8
  %165 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %166 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 19
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %170 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 19
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %168
  store i64 %173, i64* %171, align 8
  %174 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %175 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 18
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %179 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 18
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %177
  store i64 %182, i64* %180, align 8
  %183 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %184 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 17
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %188 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 17
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %186
  store i64 %191, i64* %189, align 8
  %192 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %193 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 16
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %197 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 16
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, %195
  store i64 %200, i64* %198, align 8
  %201 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %202 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 15
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %206 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 15
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, %204
  store i64 %209, i64* %207, align 8
  %210 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %211 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 14
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %215 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %214, i32 0, i32 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 14
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, %213
  store i64 %218, i64* %216, align 8
  %219 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %220 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %219, i32 0, i32 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 13
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %224 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 13
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %222
  store i64 %227, i64* %225, align 8
  %228 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %229 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 12
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %233 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 12
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %231
  store i64 %236, i64* %234, align 8
  %237 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %238 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 11
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %242 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %241, i32 0, i32 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 11
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %240
  store i64 %245, i64* %243, align 8
  %246 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %247 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %246, i32 0, i32 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 10
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %251 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 10
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, %249
  store i64 %254, i64* %252, align 8
  %255 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %256 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 9
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %260 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %259, i32 0, i32 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 9
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, %258
  store i64 %263, i64* %261, align 8
  %264 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %265 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %264, i32 0, i32 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %269 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %268, i32 0, i32 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, %267
  store i64 %272, i64* %270, align 8
  %273 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %274 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %273, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %278 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %277, i32 0, i32 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, %276
  store i64 %281, i64* %279, align 8
  %282 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %283 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %282, i32 0, i32 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %287 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %286, i32 0, i32 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, %285
  store i64 %290, i64* %288, align 8
  store i32 0, i32* %5, align 4
  br label %291

291:                                              ; preds = %313, %74
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* @UB_STATS_QTYPE_NUM, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %316

295:                                              ; preds = %291
  %296 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %297 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %296, i32 0, i32 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 5
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %305 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %304, i32 0, i32 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 5
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, %303
  store i64 %312, i64* %310, align 8
  br label %313

313:                                              ; preds = %295
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %5, align 4
  br label %291

316:                                              ; preds = %291
  store i32 0, i32* %5, align 4
  br label %317

317:                                              ; preds = %339, %316
  %318 = load i32, i32* %5, align 4
  %319 = load i32, i32* @UB_STATS_QCLASS_NUM, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %342

321:                                              ; preds = %317
  %322 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %323 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %322, i32 0, i32 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 4
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %331 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %330, i32 0, i32 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 4
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, %329
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %321
  %340 = load i32, i32* %5, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %5, align 4
  br label %317

342:                                              ; preds = %317
  store i32 0, i32* %5, align 4
  br label %343

343:                                              ; preds = %365, %342
  %344 = load i32, i32* %5, align 4
  %345 = load i32, i32* @UB_STATS_OPCODE_NUM, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %368

347:                                              ; preds = %343
  %348 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %349 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 3
  %351 = load i64*, i64** %350, align 8
  %352 = load i32, i32* %5, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %357 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 3
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %363, %355
  store i64 %364, i64* %362, align 8
  br label %365

365:                                              ; preds = %347
  %366 = load i32, i32* %5, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %5, align 4
  br label %343

368:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %369

369:                                              ; preds = %391, %368
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* @UB_STATS_RCODE_NUM, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %394

373:                                              ; preds = %369
  %374 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %375 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %374, i32 0, i32 8
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 2
  %377 = load i64*, i64** %376, align 8
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %377, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %383 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %382, i32 0, i32 8
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 2
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, %381
  store i64 %390, i64* %388, align 8
  br label %391

391:                                              ; preds = %373
  %392 = load i32, i32* %5, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %5, align 4
  br label %369

394:                                              ; preds = %369
  store i32 0, i32* %5, align 4
  br label %395

395:                                              ; preds = %417, %394
  %396 = load i32, i32* %5, align 4
  %397 = load i32, i32* @NUM_BUCKETS_HIST, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %420

399:                                              ; preds = %395
  %400 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %401 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %400, i32 0, i32 8
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 1
  %403 = load i64*, i64** %402, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %409 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %408, i32 0, i32 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 1
  %411 = load i64*, i64** %410, align 8
  %412 = load i32, i32* %5, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i64, i64* %411, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = add nsw i64 %415, %407
  store i64 %416, i64* %414, align 8
  br label %417

417:                                              ; preds = %399
  %418 = load i32, i32* %5, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %5, align 4
  br label %395

420:                                              ; preds = %395
  br label %421

421:                                              ; preds = %420, %68
  %422 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %423 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %422, i32 0, i32 7
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %426 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %425, i32 0, i32 7
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %427, %424
  store i64 %428, i64* %426, align 8
  %429 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %430 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %429, i32 0, i32 6
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %433 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %432, i32 0, i32 6
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %434, %431
  store i64 %435, i64* %433, align 8
  %436 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %437 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %436, i32 0, i32 5
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %440 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %439, i32 0, i32 5
  %441 = load i64, i64* %440, align 8
  %442 = add nsw i64 %441, %438
  store i64 %442, i64* %440, align 8
  %443 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %444 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %443, i32 0, i32 4
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %447 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %446, i32 0, i32 4
  %448 = load i64, i64* %447, align 8
  %449 = add nsw i64 %448, %445
  store i64 %449, i64* %447, align 8
  %450 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %451 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %450, i32 0, i32 3
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %454 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %455, %452
  store i64 %456, i64* %454, align 8
  %457 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %458 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %457, i32 0, i32 2
  %459 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %460 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %459, i32 0, i32 1
  %461 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %462 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %465 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @stats_timeval_add(i32* %458, i32* %460, i32 %463, i32 %466)
  %468 = load %struct.ub_stats_info*, %struct.ub_stats_info** %4, align 8
  %469 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.ub_stats_info*, %struct.ub_stats_info** %3, align 8
  %472 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = add nsw i64 %473, %470
  store i64 %474, i64* %472, align 8
  ret void
}

declare dso_local i32 @stats_timeval_add(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
