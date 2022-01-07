; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcb_rmtcallargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcb_rmtcallargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcb_rmtcallargs = type { i32 }
%struct.r_rpcb_rmtcallargs = type { %struct.TYPE_2__, i32 (i32*, i32)*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpcb_rmtcallargs(i32* %0, %struct.rpcb_rmtcallargs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rpcb_rmtcallargs*, align 8
  %6 = alloca %struct.r_rpcb_rmtcallargs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.rpcb_rmtcallargs* %1, %struct.rpcb_rmtcallargs** %5, align 8
  %11 = load %struct.rpcb_rmtcallargs*, %struct.rpcb_rmtcallargs** %5, align 8
  %12 = bitcast %struct.rpcb_rmtcallargs* %11 to i8*
  %13 = bitcast i8* %12 to %struct.r_rpcb_rmtcallargs*
  store %struct.r_rpcb_rmtcallargs* %13, %struct.r_rpcb_rmtcallargs** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %16 = mul nsw i32 3, %15
  %17 = call i32* @XDR_INLINE(i32* %14, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %23 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %22, i32 0, i32 4
  %24 = call i32 @xdr_rpcprog(i32* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %112

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %31 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %30, i32 0, i32 3
  %32 = call i32 @xdr_rpcvers(i32* %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %112

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %39 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %38, i32 0, i32 2
  %40 = call i32 @xdr_rpcproc(i32* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %112

44:                                               ; preds = %36
  br label %61

45:                                               ; preds = %2
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %48 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @IXDR_PUT_U_INT32(i32* %46, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %53 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IXDR_PUT_U_INT32(i32* %51, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %58 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IXDR_PUT_U_INT32(i32* %56, i32 %59)
  br label %61

61:                                               ; preds = %45, %44
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @XDR_GETPOS(i32* %62)
  store i64 %63, i64* %7, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %66 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @xdr_u_int(i32* %64, i64* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %112

72:                                               ; preds = %61
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @XDR_GETPOS(i32* %73)
  store i64 %74, i64* %8, align 8
  %75 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %76 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %75, i32 0, i32 1
  %77 = load i32 (i32*, i32)*, i32 (i32*, i32)** %76, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %80 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %77(i32* %78, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %112

87:                                               ; preds = %72
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @XDR_GETPOS(i32* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub nsw i64 %90, %91
  %93 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %94 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @XDR_SETPOS(i32* %96, i64 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.r_rpcb_rmtcallargs*, %struct.r_rpcb_rmtcallargs** %6, align 8
  %101 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @xdr_u_int(i32* %99, i64* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %87
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %87
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @XDR_SETPOS(i32* %108, i64 %109)
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %105, %85, %70, %42, %34, %26
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @XDR_INLINE(i32*, i32) #1

declare dso_local i32 @xdr_rpcprog(i32*, i32*) #1

declare dso_local i32 @xdr_rpcvers(i32*, i32*) #1

declare dso_local i32 @xdr_rpcproc(i32*, i32*) #1

declare dso_local i32 @IXDR_PUT_U_INT32(i32*, i32) #1

declare dso_local i64 @XDR_GETPOS(i32*) #1

declare dso_local i32 @xdr_u_int(i32*, i64*) #1

declare dso_local i32 @XDR_SETPOS(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
