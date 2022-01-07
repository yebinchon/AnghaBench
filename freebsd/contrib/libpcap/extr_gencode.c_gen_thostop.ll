; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_thostop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_thostop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"'addr1' and 'address1' are only supported on 802.11\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"'addr2' and 'address2' are only supported on 802.11\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"'addr3' and 'address3' are only supported on 802.11\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"'addr4' and 'address4' are only supported on 802.11\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"'ra' is only supported on 802.11\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"'ta' is only supported on 802.11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32*, i32)* @gen_thostop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_thostop(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.block*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %61 [
    i32 129, label %11
    i32 132, label %16
    i32 134, label %21
    i32 133, label %32
    i32 131, label %32
    i32 138, label %43
    i32 137, label %46
    i32 136, label %49
    i32 135, label %52
    i32 130, label %55
    i32 128, label %58
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @OR_LINKHDR, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.block* @gen_bcmp(i32* %12, i32 %13, i32 8, i32 6, i32* %14)
  store %struct.block* %15, %struct.block** %4, align 8
  br label %63

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @OR_LINKHDR, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.block* @gen_bcmp(i32* %17, i32 %18, i32 2, i32 6, i32* %19)
  store %struct.block* %20, %struct.block** %4, align 8
  br label %63

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.block* @gen_thostop(i32* %22, i32* %23, i32 129)
  store %struct.block* %24, %struct.block** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.block* @gen_thostop(i32* %25, i32* %26, i32 132)
  store %struct.block* %27, %struct.block** %9, align 8
  %28 = load %struct.block*, %struct.block** %8, align 8
  %29 = load %struct.block*, %struct.block** %9, align 8
  %30 = call i32 @gen_and(%struct.block* %28, %struct.block* %29)
  %31 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %31, %struct.block** %4, align 8
  br label %63

32:                                               ; preds = %3, %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.block* @gen_thostop(i32* %33, i32* %34, i32 129)
  store %struct.block* %35, %struct.block** %8, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.block* @gen_thostop(i32* %36, i32* %37, i32 132)
  store %struct.block* %38, %struct.block** %9, align 8
  %39 = load %struct.block*, %struct.block** %8, align 8
  %40 = load %struct.block*, %struct.block** %9, align 8
  %41 = call i32 @gen_or(%struct.block* %39, %struct.block* %40)
  %42 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %42, %struct.block** %4, align 8
  br label %63

43:                                               ; preds = %3
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @bpf_error(i32* %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %61

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bpf_error(i32* %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %61

49:                                               ; preds = %3
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @bpf_error(i32* %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %61

52:                                               ; preds = %3
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @bpf_error(i32* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %61

55:                                               ; preds = %3
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @bpf_error(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %61

58:                                               ; preds = %3
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @bpf_error(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %3, %58, %55, %52, %49, %46, %43
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %32, %21, %16, %11
  %64 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %64
}

declare dso_local %struct.block* @gen_bcmp(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @bpf_error(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
