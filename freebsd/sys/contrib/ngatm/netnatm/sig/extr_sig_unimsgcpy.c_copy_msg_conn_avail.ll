; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_conn_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_conn_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_conn_avail = type { i32, i32, i32*, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_conn_avail(%struct.uni_conn_avail* %0, %struct.uni_conn_avail* %1) #0 {
  %3 = alloca %struct.uni_conn_avail*, align 8
  %4 = alloca %struct.uni_conn_avail*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_conn_avail* %0, %struct.uni_conn_avail** %3, align 8
  store %struct.uni_conn_avail* %1, %struct.uni_conn_avail** %4, align 8
  %7 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %8 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %14 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %4, align 8
  %17 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %25 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IE_ISGOOD(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %34 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %4, align 8
  %40 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %51 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IE_ISGOOD(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %57 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %4, align 8
  %60 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %63 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IE_ISGOOD(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %69 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %4, align 8
  %72 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
