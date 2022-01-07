; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolv_getipnodeby.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolv_getipnodeby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%p: host %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%p: reverse %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @resolv_getipnodeby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolv_getipnodeby(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = call %struct.hostent* @getipnodebyname(i8* %10, i32 %11, i32 0, i32* %9)
  store %struct.hostent* %12, %struct.hostent** %6, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.hostent*, %struct.hostent** %6, align 8
  %17 = icmp eq %struct.hostent* %16, null
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintf(i8* %13, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @STDOUT_FILENO, align 4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @write(i32 %21, i8* %22, i32 %23)
  %25 = load %struct.hostent*, %struct.hostent** %6, align 8
  %26 = icmp ne %struct.hostent* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %2
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = load %struct.hostent*, %struct.hostent** %6, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hostent*, %struct.hostent** %6, align 8
  %33 = getelementptr inbounds %struct.hostent, %struct.hostent* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i8* %28, i32 %31, i32 %34)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %37 = load %struct.hostent*, %struct.hostent** %6, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hostent*, %struct.hostent** %6, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.hostent* @getipnodebyaddr(i8* %36, i32 %39, i32 %42, i32* %9)
  store %struct.hostent* %43, %struct.hostent** %7, align 8
  %44 = load %struct.hostent*, %struct.hostent** %7, align 8
  %45 = icmp ne %struct.hostent* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %27
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.hostent*, %struct.hostent** %7, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintf(i8* %47, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @STDOUT_FILENO, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @write(i32 %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %27
  %58 = load %struct.hostent*, %struct.hostent** %7, align 8
  %59 = icmp ne %struct.hostent* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.hostent*, %struct.hostent** %7, align 8
  %62 = call i32 @freehostent(%struct.hostent* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.hostent*, %struct.hostent** %6, align 8
  %66 = icmp ne %struct.hostent* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.hostent*, %struct.hostent** %6, align 8
  %69 = call i32 @freehostent(%struct.hostent* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.hostent*, %struct.hostent** %6, align 8
  %72 = icmp ne %struct.hostent* %71, null
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 -1
  ret i32 %74
}

declare dso_local %struct.hostent* @getipnodebyname(i8*, i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.hostent* @getipnodebyaddr(i8*, i32, i32, i32*) #1

declare dso_local i32 @freehostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
