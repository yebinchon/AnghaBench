; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-septel.c_septel_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-septel.c_septel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"septel\00", align 1
@septel_activate = common dso_local global i32 0, align 4
@septel_getnonblock = common dso_local global i32 0, align 4
@septel_setnonblock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @septel_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %40

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  store i32 1, i32* %23, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.TYPE_4__* @pcap_create_common(i8* %24, i32 4)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @septel_activate, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @septel_getnonblock, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @septel_setnonblock, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %4, align 8
  br label %40

40:                                               ; preds = %29, %28, %20
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %41
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @pcap_create_common(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
