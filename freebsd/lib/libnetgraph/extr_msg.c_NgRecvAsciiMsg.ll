; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgRecvAsciiMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgRecvAsciiMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_BINARY2ASCII = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NgRecvAsciiMsg(i32 %0, %struct.ng_mesg* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ng_mesg* %1, %struct.ng_mesg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 32, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32* @malloc(i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %92

22:                                               ; preds = %4
  %23 = load i32*, i32** %14, align 8
  %24 = bitcast i32* %23 to %struct.ng_mesg*
  store %struct.ng_mesg* %24, %struct.ng_mesg** %10, align 8
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ng_mesg*
  store %struct.ng_mesg* %28, %struct.ng_mesg** %11, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @NgRecvMsg(i32 %29, %struct.ng_mesg* %30, i32 %31, i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %73

36:                                               ; preds = %22
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %39 = call i32 @memcpy(%struct.ng_mesg* %37, %struct.ng_mesg* %38, i32 16)
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %43 = load i32, i32* @NGM_BINARY2ASCII, align 4
  %44 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %45 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %46 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @NgSendMsg(i32 %40, i8* %41, i32 %42, i32 %43, %struct.ng_mesg* %44, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %73

55:                                               ; preds = %36
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @NgRecvMsg(i32 %56, %struct.ng_mesg* %57, i32 %58, i8* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %73

62:                                               ; preds = %55
  %63 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %64 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add i64 16, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32, i32* @ERANGE, align 4
  store i32 %72, i32* @errno, align 4
  br label %73

73:                                               ; preds = %71, %61, %54, %35
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @free(i32* %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %92

78:                                               ; preds = %62
  %79 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %80 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %83 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %86 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @strncpy(i64 %81, i64 %84, i32 %88)
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @free(i32* %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %78, %73, %21
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @NgRecvMsg(i32, %struct.ng_mesg*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.ng_mesg*, %struct.ng_mesg*, i32) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ng_mesg*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strncpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
