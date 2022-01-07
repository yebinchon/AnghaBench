; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stub_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stub_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.iter_forwards* }
%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_stub_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stub_add(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iter_forwards*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.delegpt*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.worker*, %struct.worker** %5, align 8
  %13 = getelementptr inbounds %struct.worker, %struct.worker* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.iter_forwards*, %struct.iter_forwards** %14, align 8
  store %struct.iter_forwards* %15, %struct.iter_forwards** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store %struct.delegpt* null, %struct.delegpt** %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_fs_args(i32* %16, i8* %17, i32** %10, %struct.delegpt** %11, i32* %8, i32* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %121

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.worker*, %struct.worker** %5, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.worker*, %struct.worker** %5, align 8
  %32 = getelementptr inbounds %struct.worker, %struct.worker* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @anchors_add_insecure(i64 %34, i32 %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ssl_printf(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %43 = call i32 @delegpt_free_mlc(%struct.delegpt* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @free(i32* %44)
  br label %121

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %24, %21
  %48 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %49 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @forwards_add_stub_hole(%struct.iter_forwards* %48, i32 %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.worker*, %struct.worker** %5, align 8
  %58 = getelementptr inbounds %struct.worker, %struct.worker* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.worker*, %struct.worker** %5, align 8
  %64 = getelementptr inbounds %struct.worker, %struct.worker* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @anchors_delete_insecure(i64 %66, i32 %67, i32* %68)
  br label %70

70:                                               ; preds = %62, %56, %53
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ssl_printf(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %74 = call i32 @delegpt_free_mlc(%struct.delegpt* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @free(i32* %75)
  br label %121

77:                                               ; preds = %47
  %78 = load %struct.worker*, %struct.worker** %5, align 8
  %79 = getelementptr inbounds %struct.worker, %struct.worker* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %83 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @hints_add_stub(i32 %81, i32 %82, %struct.delegpt* %83, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %77
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ssl_printf(i32* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %94 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @forwards_delete_stub_hole(%struct.iter_forwards* %93, i32 %94, i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.worker*, %struct.worker** %5, align 8
  %101 = getelementptr inbounds %struct.worker, %struct.worker* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.worker*, %struct.worker** %5, align 8
  %107 = getelementptr inbounds %struct.worker, %struct.worker* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @anchors_delete_insecure(i64 %109, i32 %110, i32* %111)
  br label %113

113:                                              ; preds = %105, %99, %90
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @free(i32* %114)
  br label %121

116:                                              ; preds = %77
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @free(i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @send_ok(i32* %119)
  br label %121

121:                                              ; preds = %116, %113, %70, %39, %20
  ret void
}

declare dso_local i32 @parse_fs_args(i32*, i8*, i32**, %struct.delegpt**, i32*, i32*) #1

declare dso_local i32 @anchors_add_insecure(i64, i32, i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @forwards_add_stub_hole(%struct.iter_forwards*, i32, i32*) #1

declare dso_local i32 @anchors_delete_insecure(i64, i32, i32*) #1

declare dso_local i32 @hints_add_stub(i32, i32, %struct.delegpt*, i32) #1

declare dso_local i32 @forwards_delete_stub_hole(%struct.iter_forwards*, i32, i32*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
