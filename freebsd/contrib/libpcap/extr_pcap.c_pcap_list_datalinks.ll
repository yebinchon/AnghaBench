; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_list_datalinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_list_datalinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@PCAP_ERROR_NOT_ACTIVATED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_list_datalinks(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @PCAP_ERROR_NOT_ACTIVATED, align 4
  store i32 %11, i32* %3, align 4
  br label %70

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = call i64 @malloc(i32 4)
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32**, i32*** %5, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @pcap_fmt_errmsg_for_errno(i32 %27, i32 4, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %17
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  store i32 %34, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %70

37:                                               ; preds = %12
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @calloc(i32 4, i32 %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @pcap_fmt_errmsg_for_errno(i32 %50, i32 4, i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %70

54:                                               ; preds = %37
  %55 = load i32**, i32*** %5, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32* %56, i32 %59, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %54, %47, %31, %24, %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
