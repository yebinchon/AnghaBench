; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_CE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_CE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_ce_queue = type { i32, %struct.read_ce_req* }
%struct.read_ce_req = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.read_ce_queue*)* @next_CE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_CE(%struct.read_ce_queue* %0) #0 {
  %2 = alloca %struct.read_ce_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.read_ce_req, align 8
  store %struct.read_ce_queue* %0, %struct.read_ce_queue** %2, align 8
  %10 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %11 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %17 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %16, i32 0, i32 1
  %18 = load %struct.read_ce_req*, %struct.read_ce_req** %17, align 8
  %19 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %18, i64 0
  %20 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %21 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %20, i32 0, i32 1
  %22 = load %struct.read_ce_req*, %struct.read_ce_req** %21, align 8
  %23 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %24 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %22, i64 %27
  %29 = bitcast %struct.read_ce_req* %19 to i8*
  %30 = bitcast %struct.read_ce_req* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %31 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %32 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %31, i32 0, i32 1
  %33 = load %struct.read_ce_req*, %struct.read_ce_req** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %33, i64 %35
  %37 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %87, %15
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %46 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %119

50:                                               ; preds = %39
  %51 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %52 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %51, i32 0, i32 1
  %53 = load %struct.read_ce_req*, %struct.read_ce_req** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %53, i64 %55
  %57 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %63 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %50
  %67 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %68 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %67, i32 0, i32 1
  %69 = load %struct.read_ce_req*, %struct.read_ce_req** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %69, i64 %71
  %73 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i64, i64* %5, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %119

87:                                               ; preds = %82
  %88 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %89 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %88, i32 0, i32 1
  %90 = load %struct.read_ce_req*, %struct.read_ce_req** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %90, i64 %92
  %94 = bitcast %struct.read_ce_req* %9 to i8*
  %95 = bitcast %struct.read_ce_req* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %97 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %96, i32 0, i32 1
  %98 = load %struct.read_ce_req*, %struct.read_ce_req** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %98, i64 %100
  %102 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %103 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %102, i32 0, i32 1
  %104 = load %struct.read_ce_req*, %struct.read_ce_req** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %104, i64 %106
  %108 = bitcast %struct.read_ce_req* %101 to i8*
  %109 = bitcast %struct.read_ce_req* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = load %struct.read_ce_queue*, %struct.read_ce_queue** %2, align 8
  %111 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %110, i32 0, i32 1
  %112 = load %struct.read_ce_req*, %struct.read_ce_req** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %112, i64 %114
  %116 = bitcast %struct.read_ce_req* %115 to i8*
  %117 = bitcast %struct.read_ce_req* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %6, align 4
  br label %39

119:                                              ; preds = %86, %49, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
