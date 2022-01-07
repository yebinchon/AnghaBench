; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/if/extr_ifconf.c_show_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/if/extr_ifconf.c_show_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifconf = type { i32, %struct.ifreq* }
%struct.ifreq = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nifreqs=%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"malloc(sizeof(ifreq) * %d)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SIOCGIFCONF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: af=%hhu socklen=%hhu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_interfaces(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifconf, align 8
  %7 = alloca %struct.ifreq*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @get_number_of_entries()
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @errx(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 16, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.ifreq* @malloc(i32 %23)
  store %struct.ifreq* %24, %struct.ifreq** %7, align 8
  %25 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %26 = icmp eq %struct.ifreq* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load i32, i32* @SOCK_DGRAM, align 4
  %34 = call i32 @socket(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 (i32, i8*, ...) @err(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 16, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %47 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  store %struct.ifreq* %46, %struct.ifreq** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SIOCGIFCONF, align 4
  %50 = call i32 @ioctl(i32 %48, i32 %49, %struct.ifconf* %6)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 (i32, i8*, ...) @err(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %40
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @close(i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %89, %56
  %60 = load i32, i32* %3, align 4
  %61 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %68, i64 %70
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %74, i64 %76
  %78 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %81, i64 %83
  %85 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %67
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %94 = call i32 @free(%struct.ifreq* %93)
  ret void
}

declare dso_local i32 @get_number_of_entries(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local %struct.ifreq* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifconf*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
