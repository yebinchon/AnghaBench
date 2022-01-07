; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.buf_pr = type { i32 }
%struct.servent = type { i8* }
%struct.protoent = type { i32* }

@IPPROTO_ETHERTYPE = common dso_local global i32 0, align 4
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ether_types = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, i32, i8*)* @print_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_port(%struct.buf_pr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.buf_pr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.servent*, align 8
  %9 = alloca %struct.protoent*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IPPROTO_ETHERTYPE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* @ether_types, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @match_value(i32 %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @bprintf(%struct.buf_pr* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %29

25:                                               ; preds = %16, %13
  %26 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @bprintf(%struct.buf_pr* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %62

30:                                               ; preds = %3
  store %struct.servent* null, %struct.servent** %8, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.protoent* @getprotobynumber(i32 %34)
  store %struct.protoent* %35, %struct.protoent** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @htons(i8* %36)
  %38 = load %struct.protoent*, %struct.protoent** %9, align 8
  %39 = icmp ne %struct.protoent* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.protoent*, %struct.protoent** %9, align 8
  %42 = getelementptr inbounds %struct.protoent, %struct.protoent* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32* [ %43, %40 ], [ null, %44 ]
  %47 = call %struct.servent* @getservbyport(i32 %37, i32* %46)
  store %struct.servent* %47, %struct.servent** %8, align 8
  br label %48

48:                                               ; preds = %45, %30
  %49 = load %struct.servent*, %struct.servent** %8, align 8
  %50 = icmp ne %struct.servent* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %53 = load %struct.servent*, %struct.servent** %8, align 8
  %54 = getelementptr inbounds %struct.servent, %struct.servent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @bprintf(%struct.buf_pr* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @bprintf(%struct.buf_pr* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %29
  ret void
}

declare dso_local i8* @match_value(i32, i8*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, i8*) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local %struct.servent* @getservbyport(i32, i32*) #1

declare dso_local i32 @htons(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
