; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_static_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_static_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i32 }
%struct.format_opts = type { i32, i32, i64, i64 }
%struct.buf_pr = type { i8* }
%struct.TYPE_3__ = type { i64 }
%struct.ip_fw_rule = type { i64, i32 }
%struct.ip_fw_bcounter = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, %struct.TYPE_3__*, i32)* @list_static_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_static_range(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.buf_pr* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca %struct.cmdline_opts*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.buf_pr*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_fw_rule*, align 8
  %14 = alloca %struct.ip_fw_bcounter*, align 8
  %15 = alloca i32, align 4
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.buf_pr* %2, %struct.buf_pr** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %107, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %22 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %25 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 1
  %32 = bitcast %struct.TYPE_3__* %31 to %struct.ip_fw_bcounter*
  store %struct.ip_fw_bcounter* %32, %struct.ip_fw_bcounter** %14, align 8
  %33 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %14, align 8
  %34 = ptrtoint %struct.ip_fw_bcounter* %33 to i64
  %35 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %14, align 8
  %36 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = inttoptr i64 %38 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %39, %struct.ip_fw_rule** %13, align 8
  br label %44

40:                                               ; preds = %20
  store %struct.ip_fw_bcounter* null, %struct.ip_fw_bcounter** %14, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 1
  %43 = bitcast %struct.TYPE_3__* %42 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %43, %struct.ip_fw_rule** %13, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %13, align 8
  %46 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %49 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %117

53:                                               ; preds = %44
  %54 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %55 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %13, align 8
  %60 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %63 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %107

68:                                               ; preds = %58, %53
  %69 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %13, align 8
  %70 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %73 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %68
  %77 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %13, align 8
  %78 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %81 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %79, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %76
  %85 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %86 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %87 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %88 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %13, align 8
  %89 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %14, align 8
  %90 = call i32 @show_static_rule(%struct.cmdline_opts* %85, %struct.format_opts* %86, %struct.buf_pr* %87, %struct.ip_fw_rule* %88, %struct.ip_fw_bcounter* %89)
  %91 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %92 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %103 = call i32 @bp_flush(%struct.buf_pr* %102)
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %84, %76, %68
  br label %107

107:                                              ; preds = %106, %67
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = ptrtoint %struct.TYPE_3__* %110 to i64
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = inttoptr i64 %115 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %9, align 8
  br label %16

117:                                              ; preds = %52, %16
  %118 = load i32, i32* %12, align 4
  ret i32 %118
}

declare dso_local i32 @show_static_rule(%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, %struct.ip_fw_rule*, %struct.ip_fw_bcounter*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bp_flush(%struct.buf_pr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
