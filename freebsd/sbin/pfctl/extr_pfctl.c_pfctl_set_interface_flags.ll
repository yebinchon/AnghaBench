; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_interface_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_interface_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32 }
%struct.pfioc_iface = type { i32, i32 }
%struct.node_host = type { i8*, %struct.node_host* }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pfctl_set_interface_flags: strlcpy\00", align 1
@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@DIOCCLRIFFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"DIOCCLRIFFLAG\00", align 1
@DIOCSETIFFLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DIOCSETIFFLAG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_interface_flags(%struct.pfctl* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfioc_iface, align 4
  %11 = alloca %struct.node_host*, align 8
  %12 = alloca %struct.node_host*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.node_host* null, %struct.node_host** %11, align 8
  store %struct.node_host* null, %struct.node_host** %12, align 8
  %13 = load i32, i32* @loadopt, align 4
  %14 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

18:                                               ; preds = %4
  %19 = call i32 @bzero(%struct.pfioc_iface* %10, i32 8)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.node_host* @ifa_grouplookup(i8* %22, i32 0)
  store %struct.node_host* %23, %struct.node_host** %11, align 8
  %24 = load %struct.node_host*, %struct.node_host** %11, align 8
  store %struct.node_host* %24, %struct.node_host** %12, align 8
  br label %25

25:                                               ; preds = %36, %18
  %26 = load %struct.node_host*, %struct.node_host** %12, align 8
  %27 = icmp ne %struct.node_host* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %30 = load %struct.node_host*, %struct.node_host** %12, align 8
  %31 = getelementptr inbounds %struct.node_host, %struct.node_host* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pfctl_set_interface_flags(%struct.pfctl* %29, i8* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load %struct.node_host*, %struct.node_host** %12, align 8
  %38 = getelementptr inbounds %struct.node_host, %struct.node_host* %37, i32 0, i32 1
  %39 = load %struct.node_host*, %struct.node_host** %38, align 8
  store %struct.node_host* %39, %struct.node_host** %12, align 8
  br label %25

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlcpy(i32 %42, i8* %43, i32 4)
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %51 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PF_OPT_NOACTION, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %61 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DIOCCLRIFFLAG, align 4
  %64 = call i64 @ioctl(i32 %62, i32 %63, %struct.pfioc_iface* %10)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  br label %81

69:                                               ; preds = %56
  %70 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %71 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DIOCSETIFFLAG, align 4
  %74 = call i64 @ioctl(i32 %72, i32 %73, %struct.pfioc_iface* %10)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @pfctl_check_skip_ifaces(i8* %79)
  br label %81

81:                                               ; preds = %78, %68
  br label %82

82:                                               ; preds = %81, %49
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @bzero(%struct.pfioc_iface*, i32) #1

declare dso_local %struct.node_host* @ifa_grouplookup(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_iface*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pfctl_check_skip_ifaces(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
