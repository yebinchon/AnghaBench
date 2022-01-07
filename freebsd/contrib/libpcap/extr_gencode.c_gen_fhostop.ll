; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_fhostop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_fhostop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"'addr1' and 'address1' are only supported on 802.11\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"'addr2' and 'address2' are only supported on 802.11\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"'addr3' and 'address3' are only supported on 802.11\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"'addr4' and 'address4' are only supported on 802.11\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"'ra' is only supported on 802.11\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"'ta' is only supported on 802.11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_5__*, i32*, i32)* @gen_fhostop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_fhostop(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %69 [
    i32 129, label %11
    i32 132, label %20
    i32 134, label %29
    i32 133, label %40
    i32 131, label %40
    i32 138, label %51
    i32 137, label %54
    i32 136, label %57
    i32 135, label %60
    i32 130, label %63
    i32 128, label %66
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @OR_LINKHDR, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 7, %16
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.block* @gen_bcmp(%struct.TYPE_5__* %12, i32 %13, i32 %17, i32 6, i32* %18)
  store %struct.block* %19, %struct.block** %4, align 8
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* @OR_LINKHDR, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 1, %25
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.block* @gen_bcmp(%struct.TYPE_5__* %21, i32 %22, i32 %26, i32 6, i32* %27)
  store %struct.block* %28, %struct.block** %4, align 8
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.block* @gen_fhostop(%struct.TYPE_5__* %30, i32* %31, i32 129)
  store %struct.block* %32, %struct.block** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.block* @gen_fhostop(%struct.TYPE_5__* %33, i32* %34, i32 132)
  store %struct.block* %35, %struct.block** %9, align 8
  %36 = load %struct.block*, %struct.block** %8, align 8
  %37 = load %struct.block*, %struct.block** %9, align 8
  %38 = call i32 @gen_and(%struct.block* %36, %struct.block* %37)
  %39 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %39, %struct.block** %4, align 8
  br label %71

40:                                               ; preds = %3, %3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.block* @gen_fhostop(%struct.TYPE_5__* %41, i32* %42, i32 129)
  store %struct.block* %43, %struct.block** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.block* @gen_fhostop(%struct.TYPE_5__* %44, i32* %45, i32 132)
  store %struct.block* %46, %struct.block** %9, align 8
  %47 = load %struct.block*, %struct.block** %8, align 8
  %48 = load %struct.block*, %struct.block** %9, align 8
  %49 = call i32 @gen_or(%struct.block* %47, %struct.block* %48)
  %50 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %50, %struct.block** %4, align 8
  br label %71

51:                                               ; preds = %3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = call i32 @bpf_error(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %69

54:                                               ; preds = %3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = call i32 @bpf_error(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %69

57:                                               ; preds = %3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = call i32 @bpf_error(%struct.TYPE_5__* %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %69

60:                                               ; preds = %3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = call i32 @bpf_error(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %69

63:                                               ; preds = %3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = call i32 @bpf_error(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %69

66:                                               ; preds = %3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @bpf_error(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %3, %66, %63, %60, %57, %54, %51
  %70 = call i32 (...) @abort() #3
  unreachable

71:                                               ; preds = %40, %29, %20, %11
  %72 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %72
}

declare dso_local %struct.block* @gen_bcmp(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

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
