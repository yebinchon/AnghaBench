; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_rmt.c_xdr_rmtcall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_rmt.c_xdr_rmtcall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmtcallargs = type { i64, i32, i32 (i32*, i32)*, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rmtcall_args(i32* %0, %struct.rmtcallargs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rmtcallargs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.rmtcallargs* %1, %struct.rmtcallargs** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %14 = icmp ne %struct.rmtcallargs* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %19 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %18, i32 0, i32 5
  %20 = call i64 @xdr_u_long(i32* %17, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %25 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %24, i32 0, i32 4
  %26 = call i64 @xdr_u_long(i32* %23, i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %31 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %30, i32 0, i32 3
  %32 = call i64 @xdr_u_long(i32* %29, i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @XDR_GETPOS(i32* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %39 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %38, i32 0, i32 0
  %40 = call i64 @xdr_u_long(i32* %37, i64* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @XDR_GETPOS(i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %48 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %47, i32 0, i32 2
  %49 = load i32 (i32*, i32)*, i32 (i32*, i32)** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %52 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %49(i32* %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %83

58:                                               ; preds = %44
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @XDR_GETPOS(i32* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %65 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @XDR_SETPOS(i32* %66, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.rmtcallargs*, %struct.rmtcallargs** %5, align 8
  %71 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %70, i32 0, i32 0
  %72 = call i64 @xdr_u_long(i32* %69, i64* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @XDR_SETPOS(i32* %77, i64 %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %28, %22, %2
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %76, %74, %56, %42
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xdr_u_long(i32*, i64*) #1

declare dso_local i64 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_SETPOS(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
