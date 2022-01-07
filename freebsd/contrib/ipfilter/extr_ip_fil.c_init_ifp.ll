; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/extr_ip_fil.c_init_ifp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/extr_ip_fil.c_init_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i8*, i8*, i32, i8* }

@ifneta = common dso_local global %struct.ifnet** null, align 8
@write_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/tmp/%s%d\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ifp() #0 {
  %1 = alloca %struct.ifnet*, align 8
  %2 = alloca %struct.ifnet**, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load %struct.ifnet**, %struct.ifnet*** @ifneta, align 8
  store %struct.ifnet** %5, %struct.ifnet*** %2, align 8
  br label %6

6:                                                ; preds = %45, %0
  %7 = load %struct.ifnet**, %struct.ifnet*** %2, align 8
  %8 = icmp ne %struct.ifnet** %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct.ifnet**, %struct.ifnet*** %2, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %1, align 8
  %12 = icmp ne %struct.ifnet* %11, null
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %48

15:                                               ; preds = %13
  %16 = load i64, i64* @write_output, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %21 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26)
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @O_EXCL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @O_TRUNC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @open(i8* %28, i32 %35, i32 384)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %44

41:                                               ; preds = %15
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %39
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.ifnet**, %struct.ifnet*** %2, align 8
  %47 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %46, i32 1
  store %struct.ifnet** %47, %struct.ifnet*** %2, align 8
  br label %6

48:                                               ; preds = %13
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
