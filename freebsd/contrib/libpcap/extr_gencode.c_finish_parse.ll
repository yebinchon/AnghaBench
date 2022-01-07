; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_finish_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_finish_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.block = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_parse(%struct.TYPE_8__* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.block*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.block*, %struct.block** %4, align 8
  %8 = getelementptr inbounds %struct.block, %struct.block* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @insert_compute_vloffsets(%struct.TYPE_8__* %6, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call %struct.block* @gen_ppi_dlt_check(%struct.TYPE_8__* %11)
  store %struct.block* %12, %struct.block** %5, align 8
  %13 = load %struct.block*, %struct.block** %5, align 8
  %14 = icmp ne %struct.block* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.block*, %struct.block** %5, align 8
  %17 = load %struct.block*, %struct.block** %4, align 8
  %18 = call i32 @gen_and(%struct.block* %16, %struct.block* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.block*, %struct.block** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gen_retblk(%struct.TYPE_8__* %21, i32 %24)
  %26 = call i32 @backpatch(%struct.block* %20, i32 %25)
  %27 = load %struct.block*, %struct.block** %4, align 8
  %28 = getelementptr inbounds %struct.block, %struct.block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.block*, %struct.block** %4, align 8
  %34 = getelementptr inbounds %struct.block, %struct.block* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.block*, %struct.block** %4, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = call i32 @gen_retblk(%struct.TYPE_8__* %36, i32 0)
  %38 = call i32 @backpatch(%struct.block* %35, i32 %37)
  %39 = load %struct.block*, %struct.block** %4, align 8
  %40 = getelementptr inbounds %struct.block, %struct.block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  ret void
}

declare dso_local i32 @insert_compute_vloffsets(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.block* @gen_ppi_dlt_check(%struct.TYPE_8__*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @backpatch(%struct.block*, i32) #1

declare dso_local i32 @gen_retblk(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
