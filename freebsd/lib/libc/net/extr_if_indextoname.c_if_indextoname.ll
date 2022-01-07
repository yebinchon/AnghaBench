; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_indextoname.c_if_indextoname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_indextoname.c_if_indextoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, %struct.TYPE_2__*, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@AF_LINK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @if_indextoname(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i64 @getifaddrs(%struct.ifaddrs** %6)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %7, align 8
  br label %14

14:                                               ; preds = %40, %12
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_LINK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %33 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = bitcast %struct.TYPE_2__* %34 to %struct.sockaddr_dl*
  %36 = call i32 @LLINDEX(%struct.sockaddr_dl* %35)
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %44

39:                                               ; preds = %30, %22, %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %42 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %41, i32 0, i32 2
  %43 = load %struct.ifaddrs*, %struct.ifaddrs** %42, align 8
  store %struct.ifaddrs* %43, %struct.ifaddrs** %7, align 8
  br label %14

44:                                               ; preds = %38, %14
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %46 = icmp eq %struct.ifaddrs* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %8, align 4
  store i8* null, i8** %5, align 8
  br label %56

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %52 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IFNAMSIZ, align 4
  %55 = call i32 @strncpy(i8* %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %47
  %57 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %58 = call i32 @freeifaddrs(%struct.ifaddrs* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* @errno, align 4
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %56, %11
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @LLINDEX(%struct.sockaddr_dl*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
