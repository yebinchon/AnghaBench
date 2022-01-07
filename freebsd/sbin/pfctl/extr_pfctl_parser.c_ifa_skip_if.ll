; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_skip_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_skip_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { i64, i8* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifa_skip_if(i8* %0, %struct.node_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node_host*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.node_host* %1, %struct.node_host** %5, align 8
  %7 = load %struct.node_host*, %struct.node_host** %5, align 8
  %8 = getelementptr inbounds %struct.node_host, %struct.node_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.node_host*, %struct.node_host** %5, align 8
  %14 = getelementptr inbounds %struct.node_host, %struct.node_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %96

19:                                               ; preds = %12, %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %96

27:                                               ; preds = %22
  %28 = load %struct.node_host*, %struct.node_host** %5, align 8
  %29 = getelementptr inbounds %struct.node_host, %struct.node_host* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %96

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IFNAMSIZ, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %35
  store i32 1, i32* %3, align 4
  br label %96

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 57
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %96

64:                                               ; preds = %54, %45
  %65 = load %struct.node_host*, %struct.node_host** %5, align 8
  %66 = getelementptr inbounds %struct.node_host, %struct.node_host* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @strncmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %96

73:                                               ; preds = %64
  %74 = load %struct.node_host*, %struct.node_host** %5, align 8
  %75 = getelementptr inbounds %struct.node_host, %struct.node_host* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp slt i32 %81, 48
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load %struct.node_host*, %struct.node_host** %5, align 8
  %85 = getelementptr inbounds %struct.node_host, %struct.node_host* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sgt i32 %91, 57
  br label %93

93:                                               ; preds = %83, %73
  %94 = phi i1 [ true, %73 ], [ %92, %83 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %72, %63, %44, %34, %26, %18
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
