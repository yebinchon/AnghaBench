; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_bsd_to_linux_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_bsd_to_linux_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.l_sockaddr = type { i32 }

@UCHAR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsd_to_linux_sockaddr(%struct.sockaddr* %0, %struct.l_sockaddr** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.l_sockaddr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.l_sockaddr** %1, %struct.l_sockaddr*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.l_sockaddr**, %struct.l_sockaddr*** %6, align 8
  store %struct.l_sockaddr* null, %struct.l_sockaddr** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UCHAR_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @M_SONAME, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call %struct.l_sockaddr* @malloc(i32 %21, i32 %22, i32 %23)
  store %struct.l_sockaddr* %24, %struct.l_sockaddr** %8, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = load %struct.l_sockaddr*, %struct.l_sockaddr** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @bcopy(%struct.sockaddr* %25, %struct.l_sockaddr* %26, i32 %27)
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bsd_to_linux_domain(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.l_sockaddr*, %struct.l_sockaddr** %8, align 8
  %40 = getelementptr inbounds %struct.l_sockaddr, %struct.l_sockaddr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.l_sockaddr*, %struct.l_sockaddr** %8, align 8
  %42 = load %struct.l_sockaddr**, %struct.l_sockaddr*** %6, align 8
  store %struct.l_sockaddr* %41, %struct.l_sockaddr** %42, align 8
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.l_sockaddr*, %struct.l_sockaddr** %8, align 8
  %45 = load i32, i32* @M_SONAME, align 4
  %46 = call i32 @free(%struct.l_sockaddr* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %37, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.l_sockaddr* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.l_sockaddr*, i32) #1

declare dso_local i32 @bsd_to_linux_domain(i32) #1

declare dso_local i32 @free(%struct.l_sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
