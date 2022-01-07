; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_setproto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_setproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outproto = type { i32, i32* }
%struct.protoent = type { i32 }

@protos = common dso_local global %struct.outproto* null, align 8
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"proto number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.outproto* @setproto(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.outproto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.protoent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load %struct.outproto*, %struct.outproto** @protos, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.outproto, %struct.outproto* %8, i64 %10
  %12 = getelementptr inbounds %struct.outproto, %struct.outproto* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = load %struct.outproto*, %struct.outproto** @protos, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.outproto, %struct.outproto* %16, i64 %18
  %20 = getelementptr inbounds %struct.outproto, %struct.outproto* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strcasecmp(i32* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %7

30:                                               ; preds = %25, %7
  %31 = load %struct.outproto*, %struct.outproto** @protos, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.outproto, %struct.outproto* %31, i64 %33
  store %struct.outproto* %34, %struct.outproto** %3, align 8
  %35 = load %struct.outproto*, %struct.outproto** %3, align 8
  %36 = getelementptr inbounds %struct.outproto, %struct.outproto* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load i8*, i8** %2, align 8
  %41 = call %struct.protoent* @getprotobyname(i8* %40)
  store %struct.protoent* %41, %struct.protoent** %5, align 8
  %42 = icmp ne %struct.protoent* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.protoent*, %struct.protoent** %5, align 8
  %45 = getelementptr inbounds %struct.protoent, %struct.protoent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @str2val(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1, i32 255)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.outproto*, %struct.outproto** %3, align 8
  %53 = getelementptr inbounds %struct.outproto, %struct.outproto* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %30
  %55 = load %struct.outproto*, %struct.outproto** %3, align 8
  ret %struct.outproto* %55
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @str2val(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
