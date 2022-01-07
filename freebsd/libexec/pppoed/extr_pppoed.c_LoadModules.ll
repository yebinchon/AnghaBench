; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/pppoed/extr_pppoed.c_LoadModules.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/pppoed/extr_pppoed.c_LoadModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"netgraph\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ng_socket\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ng_ether\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ng_pppoe\00", align 1
@__const.LoadModules.module = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"kldload: %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadModules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadModules() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8*], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [4 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i8*]* @__const.LoadModules.module to i8*), i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @modfind(i8* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @kldload(i8* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %28, i8* %30)
  store i32 0, i32* %1, align 4
  br label %37

32:                                               ; preds = %16, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @modfind(i8*) #2

declare dso_local i32 @kldload(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
