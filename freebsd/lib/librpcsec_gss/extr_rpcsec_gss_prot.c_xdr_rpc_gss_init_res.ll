; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_init_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_init_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_init_res = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_init_res(i32* %0, %struct.rpc_gss_init_res* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rpc_gss_init_res*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rpc_gss_init_res* %1, %struct.rpc_gss_init_res** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %6, i32 0, i32 4
  %8 = call i64 @xdr_gss_buffer_desc(i32* %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %12, i32 0, i32 3
  %14 = call i64 @xdr_u_int(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %18, i32 0, i32 2
  %20 = call i64 @xdr_u_int(i32* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %24, i32 0, i32 1
  %26 = call i64 @xdr_u_int(i32* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %30, i32 0, i32 0
  %32 = call i64 @xdr_gss_buffer_desc(i32* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %22, %16, %10, %2
  %35 = phi i1 [ false, %22 ], [ false, %16 ], [ false, %10 ], [ false, %2 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @xdr_gss_buffer_desc(i32*, i32*) #1

declare dso_local i64 @xdr_u_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
