; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_authunix_prot.c_xdr_authunix_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_authunix_prot.c_xdr_authunix_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authunix_parms = type { i32, i32, i32, i32, i32, i32* }

@MAX_MACHINE_NAME = common dso_local global i32 0, align 4
@NGRPS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_authunix_parms(i32* %0, %struct.authunix_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.authunix_parms*, align 8
  %6 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store %struct.authunix_parms* %1, %struct.authunix_parms** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %12 = icmp ne %struct.authunix_parms* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %16 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %15, i32 0, i32 5
  store i32** %16, i32*** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %19 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %18, i32 0, i32 4
  %20 = call i64 @xdr_u_long(i32* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %25 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %24, i32 0, i32 3
  %26 = load i32, i32* @MAX_MACHINE_NAME, align 4
  %27 = call i64 @xdr_string(i32* %23, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %32 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %31, i32 0, i32 2
  %33 = call i64 @xdr_u_int(i32* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %38 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %37, i32 0, i32 1
  %39 = call i64 @xdr_u_int(i32* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = bitcast i32** %43 to i8**
  %45 = load %struct.authunix_parms*, %struct.authunix_parms** %5, align 8
  %46 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %45, i32 0, i32 0
  %47 = load i32, i32* @NGRPS, align 4
  %48 = call i64 @xdr_array(i32* %42, i8** %44, i32* %46, i32 %47, i32 4, i32 ptrtoint (i64 (i32*, i32*)* @xdr_u_int to i32))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %41, %35, %29, %22, %2
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xdr_u_long(i32*, i32*) #1

declare dso_local i64 @xdr_string(i32*, i32*, i32) #1

declare dso_local i64 @xdr_u_int(i32*, i32*) #1

declare dso_local i64 @xdr_array(i32*, i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
