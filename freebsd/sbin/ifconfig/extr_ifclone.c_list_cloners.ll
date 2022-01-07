; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifclone.c_list_cloners.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifclone.c_list_cloners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clonereq = type { i32, i32, i8* }

@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"socket(AF_LOCAL,SOCK_DGRAM)\00", align 1
@SIOCIFGCLONERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SIOCIFGCLONERS for count\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to allocate cloner name buffer\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SIOCIFGCLONERS for names\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_cloners to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_cloners() #0 {
  %1 = alloca %struct.if_clonereq, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @AF_LOCAL, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = call i32 @memset(%struct.if_clonereq* %1, i32 0, i32 16)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SIOCIFGCLONERS, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.if_clonereq* %1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i8* @malloc(i32 %25)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  %32 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SIOCIFGCLONERS, align 4
  %39 = call i64 @ioctl(i32 %37, i32 %38, %struct.if_clonereq* %1)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %31
  %44 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %68, %53
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %1, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @putchar(i8 signext 32)
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @IFNAMSIZ, align 4
  %72 = load i8*, i8** %2, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %2, align 8
  br label %55

75:                                               ; preds = %55
  %76 = call i32 @putchar(i8 signext 10)
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @close(i32 %79)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.if_clonereq*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.if_clonereq*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
