; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i32*, i32* }

@RMP_ADDRLEN = common dso_local global i32 0, align 4
@HPEXT_SXSAP = common dso_local global i64 0, align 8
@HPEXT_DXSAP = common dso_local global i64 0, align 8
@DbgFp = common dso_local global i32* null, align 8
@DIR_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendPacket(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = bitcast i32* %15 to i8*
  %17 = load i32, i32* @RMP_ADDRLEN, align 4
  %18 = call i32 @memmove(i8* %9, i8* %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 4
  %23 = call i8* @htons(i64 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* %23, i8** %27, align 8
  %28 = load i64, i64* @HPEXT_SXSAP, align 8
  %29 = call i8* @htons(i64 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load i64, i64* @HPEXT_DXSAP, align 8
  %35 = call i8* @htons(i64 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call i32 @gettimeofday(i32* %41, i32* null)
  %43 = load i32*, i32** @DbgFp, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = load i32, i32* @DIR_SENT, align 4
  %48 = call i32 @DispPkt(%struct.TYPE_11__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = call i32 @BpfWrite(%struct.TYPE_11__* %50)
  ret i32 %51
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @DispPkt(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BpfWrite(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
