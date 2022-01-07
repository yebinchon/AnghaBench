; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_nonchunk_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_nonchunk_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i64, i32, i32 (%struct.comm_point*, i32, i32, i32*)*, i32 }

@NETEVENT_DONE = common dso_local global i32 0, align 4
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*)* @http_nonchunk_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_nonchunk_segment(%struct.comm_point* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comm_point*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.comm_point* %0, %struct.comm_point** %3, align 8
  %7 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %8 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @sldns_buffer_limit(i32 %9)
  %11 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %12 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %22 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sldns_buffer_set_position(i32 %25, i64 0)
  %27 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %28 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %27, i32 0, i32 3
  %29 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %28, align 8
  %30 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %29)
  %31 = call i32 @fptr_ok(i32 %30)
  %32 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %33 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %32, i32 0, i32 3
  %34 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %33, align 8
  %35 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %36 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NETEVENT_DONE, align 4
  %40 = call i32 %34(%struct.comm_point* %35, i32 %38, i32 %39, i32* null)
  store i32 1, i32* %2, align 4
  br label %102

41:                                               ; preds = %1
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @sldns_buffer_capacity(i32 %49)
  %51 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @sldns_buffer_limit(i32 %53)
  %55 = sub i64 %50, %54
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %41
  %62 = load i64, i64* %4, align 8
  %63 = icmp uge i64 %62, 2048
  br i1 %63, label %64, label %81

64:                                               ; preds = %61, %41
  %65 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %66 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @sldns_buffer_limit(i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %70 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sldns_buffer_clear(i32 %71)
  %73 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @sldns_buffer_set_position(i32 %75, i64 %76)
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i32 1, i32* %2, align 4
  br label %102

81:                                               ; preds = %61
  %82 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %83 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sldns_buffer_set_position(i32 %86, i64 0)
  %88 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %89 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %88, i32 0, i32 3
  %90 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %89, align 8
  %91 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %90)
  %92 = call i32 @fptr_ok(i32 %91)
  %93 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %94 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %93, i32 0, i32 3
  %95 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %94, align 8
  %96 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %97 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %98 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NETEVENT_NOERROR, align 4
  %101 = call i32 %95(%struct.comm_point* %96, i32 %99, i32 %100, i32* null)
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %81, %64, %20
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32, i64) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i64 @sldns_buffer_capacity(i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
