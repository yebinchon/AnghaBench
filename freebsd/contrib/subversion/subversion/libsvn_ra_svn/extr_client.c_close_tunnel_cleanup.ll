; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_close_tunnel_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_close_tunnel_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tunnel_data_t = type { i64, i64, i32, i32, i32 (i32, i32)* }

@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @close_tunnel_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_tunnel_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tunnel_data_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tunnel_data_t*
  store %struct.tunnel_data_t* %5, %struct.tunnel_data_t** %3, align 8
  %6 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %7 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %6, i32 0, i32 4
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %12 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %11, i32 0, i32 4
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %15 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %18 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %13(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %23 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @svn_stream_close(i64 %24)
  %26 = call i32 @svn_error_clear(i32 %25)
  %27 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %28 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %31 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.tunnel_data_t*, %struct.tunnel_data_t** %3, align 8
  %36 = getelementptr inbounds %struct.tunnel_data_t, %struct.tunnel_data_t* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @svn_stream_close(i64 %37)
  %39 = call i32 @svn_error_clear(i32 %38)
  br label %40

40:                                               ; preds = %34, %21
  %41 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %41
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_stream_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
