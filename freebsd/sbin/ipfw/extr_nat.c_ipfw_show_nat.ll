; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_ipfw_show_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_ipfw_show_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.nat_list_arg = type { i32, i32 }
%struct.nat44_cfg_nat = type { i32 }

@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@IP_FW_NAT44_XGETCONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@IP_FW_NAT44_XGETLOG = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"only one instance name may be specified\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Please specify action. Available: config,log\00", align 1
@nat_show_data = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Error getting nat %s instance info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_show_nat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nat_list_arg, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %4, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %87

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i8* null, i8** %6, align 8
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @IP_FW_NAT44_XGETCONFIG, align 4
  store i32 %31, i32* %7, align 4
  br label %50

32:                                               ; preds = %20
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @IP_FW_NAT44_XGETLOG, align 4
  store i32 %39, i32* %7, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EX_USAGE, align 4
  %45 = call i32 (i32, i8*, ...) @err(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %46, %38, %30
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %3, align 4
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %4, align 8
  br label %17

55:                                               ; preds = %17
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EX_USAGE, align 4
  %60 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = call i32 @memset(%struct.nat_list_arg* %8, i32 0, i32 8)
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %8, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @nat_show_data, align 4
  %70 = call i32 @nat_foreach(i32 %69, %struct.nat_list_arg* %8, i32 1)
  br label %87

71:                                               ; preds = %61
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @nat_get_cmd(i8* %72, i32 %73, i32** %5)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @EX_OSERR, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i32, i8*, ...) @err(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = bitcast i32* %82 to %struct.nat44_cfg_nat*
  %84 = call i32 @nat_show_cfg(%struct.nat44_cfg_nat* %83, i32* null)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @free(i32* %85)
  br label %87

87:                                               ; preds = %15, %80, %64
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.nat_list_arg*, i32, i32) #1

declare dso_local i32 @nat_foreach(i32, %struct.nat_list_arg*, i32) #1

declare dso_local i64 @nat_get_cmd(i8*, i32, i32**) #1

declare dso_local i32 @nat_show_cfg(%struct.nat44_cfg_nat*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
