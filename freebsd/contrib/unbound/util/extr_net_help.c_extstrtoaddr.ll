; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_extstrtoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_extstrtoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@MAX_ADDR_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extstrtoaddr(i8* %0, %struct.sockaddr_storage* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 64)
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %57

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = trunc i64 %19 to i32
  %34 = call i32 @strlcpy(i8* %21, i8* %32, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %21, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %57

52:                                               ; preds = %46, %31
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ipstrtoaddr(i8* %21, i32 %53, %struct.sockaddr_storage* %54, i32* %55)
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %52, %51, %30
  %58 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %58)
  br label %65

59:                                               ; preds = %3
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @ipstrtoaddr(i8* %60, i32 %61, %struct.sockaddr_storage* %62, i32* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
