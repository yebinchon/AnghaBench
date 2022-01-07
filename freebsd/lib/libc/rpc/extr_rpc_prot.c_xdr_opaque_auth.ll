; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_xdr_opaque_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_xdr_opaque_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i32, i32, i32 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_opaque_auth(i32* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.opaque_auth*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %11 = icmp ne %struct.opaque_auth* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %16 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %15, i32 0, i32 2
  %17 = call i64 @xdr_enum(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %22 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %21, i32 0, i32 1
  %23 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %24 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %23, i32 0, i32 0
  %25 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %26 = call i32 @xdr_bytes(i32* %20, i32* %22, i32* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xdr_enum(i32*, i32*) #1

declare dso_local i32 @xdr_bytes(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
