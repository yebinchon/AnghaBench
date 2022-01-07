; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.iter_forwards* }
%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error: structure not allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_forward(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iter_forwards*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.delegpt*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.worker*, %struct.worker** %5, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.iter_forwards*, %struct.iter_forwards** %12, align 8
  store %struct.iter_forwards* %13, %struct.iter_forwards** %7, align 8
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %8, align 8
  %14 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %15 = icmp ne %struct.iter_forwards* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ssl_printf(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %67

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %19
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @print_root_fwds(i32* %29, %struct.iter_forwards* %30, i32* %31)
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.worker*, %struct.worker** %5, align 8
  %35 = getelementptr inbounds %struct.worker, %struct.worker* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mesh_delete_all(i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %44 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @forwards_delete_zone(%struct.iter_forwards* %43, i32 %44, i32* %45)
  br label %64

47:                                               ; preds = %33
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call %struct.delegpt* @parse_delegpt(i32* %48, i8* %49, i32* %50, i32 0)
  store %struct.delegpt* %51, %struct.delegpt** %9, align 8
  %52 = icmp ne %struct.delegpt* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %67

54:                                               ; preds = %47
  %55 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %56 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %57 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %58 = call i32 @forwards_add_zone(%struct.iter_forwards* %55, i32 %56, %struct.delegpt* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ssl_printf(i32* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @send_ok(i32* %65)
  br label %67

67:                                               ; preds = %64, %60, %53, %28, %16
  ret void
}

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @print_root_fwds(i32*, %struct.iter_forwards*, i32*) #1

declare dso_local i32 @mesh_delete_all(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @forwards_delete_zone(%struct.iter_forwards*, i32, i32*) #1

declare dso_local %struct.delegpt* @parse_delegpt(i32*, i8*, i32*, i32) #1

declare dso_local i32 @forwards_add_zone(%struct.iter_forwards*, i32, %struct.delegpt*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
