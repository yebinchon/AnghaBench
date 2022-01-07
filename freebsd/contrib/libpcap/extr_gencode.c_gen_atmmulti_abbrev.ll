; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmmulti_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmmulti_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"'oam' supported only on raw ATM\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"'oamf4' supported only on raw ATM\00", align 1
@A_VCI = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@A_VPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"'connectmsg' supported only on raw ATM\00", align 1
@A_SETUP = common dso_local global i32 0, align 4
@A_CALLPROCEED = common dso_local global i32 0, align 4
@A_CONNECT = common dso_local global i32 0, align 4
@A_CONNECTACK = common dso_local global i32 0, align 4
@A_RELEASE = common dso_local global i32 0, align 4
@A_RELEASE_DONE = common dso_local global i32 0, align 4
@A_SC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"'metaconnect' supported only on raw ATM\00", align 1
@A_METAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_atmmulti_abbrev(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %136 [
    i32 129, label %8
    i32 128, label %19
    i32 131, label %46
    i32 130, label %94
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @bpf_error(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call %struct.block* @gen_atmmulti_abbrev(%struct.TYPE_7__* %17, i32 128)
  store %struct.block* %18, %struct.block** %6, align 8
  br label %138

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @bpf_error(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32, i32* @A_VCI, align 4
  %30 = load i32, i32* @BPF_JEQ, align 4
  %31 = call %struct.block* @gen_atmfield_code(%struct.TYPE_7__* %28, i32 %29, i32 3, i32 %30, i32 0)
  store %struct.block* %31, %struct.block** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* @A_VCI, align 4
  %34 = load i32, i32* @BPF_JEQ, align 4
  %35 = call %struct.block* @gen_atmfield_code(%struct.TYPE_7__* %32, i32 %33, i32 4, i32 %34, i32 0)
  store %struct.block* %35, %struct.block** %6, align 8
  %36 = load %struct.block*, %struct.block** %5, align 8
  %37 = load %struct.block*, %struct.block** %6, align 8
  %38 = call i32 @gen_or(%struct.block* %36, %struct.block* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* @A_VPI, align 4
  %41 = load i32, i32* @BPF_JEQ, align 4
  %42 = call %struct.block* @gen_atmfield_code(%struct.TYPE_7__* %39, i32 %40, i32 0, i32 %41, i32 0)
  store %struct.block* %42, %struct.block** %5, align 8
  %43 = load %struct.block*, %struct.block** %5, align 8
  %44 = load %struct.block*, %struct.block** %6, align 8
  %45 = call i32 @gen_and(%struct.block* %43, %struct.block* %44)
  br label %138

46:                                               ; preds = %2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @bpf_error(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load i32, i32* @A_SETUP, align 4
  %57 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %55, i32 %56)
  store %struct.block* %57, %struct.block** %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* @A_CALLPROCEED, align 4
  %60 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %58, i32 %59)
  store %struct.block* %60, %struct.block** %6, align 8
  %61 = load %struct.block*, %struct.block** %5, align 8
  %62 = load %struct.block*, %struct.block** %6, align 8
  %63 = call i32 @gen_or(%struct.block* %61, %struct.block* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = load i32, i32* @A_CONNECT, align 4
  %66 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %64, i32 %65)
  store %struct.block* %66, %struct.block** %5, align 8
  %67 = load %struct.block*, %struct.block** %5, align 8
  %68 = load %struct.block*, %struct.block** %6, align 8
  %69 = call i32 @gen_or(%struct.block* %67, %struct.block* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = load i32, i32* @A_CONNECTACK, align 4
  %72 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %70, i32 %71)
  store %struct.block* %72, %struct.block** %5, align 8
  %73 = load %struct.block*, %struct.block** %5, align 8
  %74 = load %struct.block*, %struct.block** %6, align 8
  %75 = call i32 @gen_or(%struct.block* %73, %struct.block* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = load i32, i32* @A_RELEASE, align 4
  %78 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %76, i32 %77)
  store %struct.block* %78, %struct.block** %5, align 8
  %79 = load %struct.block*, %struct.block** %5, align 8
  %80 = load %struct.block*, %struct.block** %6, align 8
  %81 = call i32 @gen_or(%struct.block* %79, %struct.block* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = load i32, i32* @A_RELEASE_DONE, align 4
  %84 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %82, i32 %83)
  store %struct.block* %84, %struct.block** %5, align 8
  %85 = load %struct.block*, %struct.block** %5, align 8
  %86 = load %struct.block*, %struct.block** %6, align 8
  %87 = call i32 @gen_or(%struct.block* %85, %struct.block* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = load i32, i32* @A_SC, align 4
  %90 = call %struct.block* @gen_atmtype_abbrev(%struct.TYPE_7__* %88, i32 %89)
  store %struct.block* %90, %struct.block** %5, align 8
  %91 = load %struct.block*, %struct.block** %5, align 8
  %92 = load %struct.block*, %struct.block** %6, align 8
  %93 = call i32 @gen_and(%struct.block* %91, %struct.block* %92)
  br label %138

94:                                               ; preds = %2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = call i32 @bpf_error(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = load i32, i32* @A_SETUP, align 4
  %105 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %103, i32 %104)
  store %struct.block* %105, %struct.block** %5, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = load i32, i32* @A_CALLPROCEED, align 4
  %108 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %106, i32 %107)
  store %struct.block* %108, %struct.block** %6, align 8
  %109 = load %struct.block*, %struct.block** %5, align 8
  %110 = load %struct.block*, %struct.block** %6, align 8
  %111 = call i32 @gen_or(%struct.block* %109, %struct.block* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = load i32, i32* @A_CONNECT, align 4
  %114 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %112, i32 %113)
  store %struct.block* %114, %struct.block** %5, align 8
  %115 = load %struct.block*, %struct.block** %5, align 8
  %116 = load %struct.block*, %struct.block** %6, align 8
  %117 = call i32 @gen_or(%struct.block* %115, %struct.block* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = load i32, i32* @A_RELEASE, align 4
  %120 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %118, i32 %119)
  store %struct.block* %120, %struct.block** %5, align 8
  %121 = load %struct.block*, %struct.block** %5, align 8
  %122 = load %struct.block*, %struct.block** %6, align 8
  %123 = call i32 @gen_or(%struct.block* %121, %struct.block* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = load i32, i32* @A_RELEASE_DONE, align 4
  %126 = call %struct.block* @gen_msg_abbrev(%struct.TYPE_7__* %124, i32 %125)
  store %struct.block* %126, %struct.block** %5, align 8
  %127 = load %struct.block*, %struct.block** %5, align 8
  %128 = load %struct.block*, %struct.block** %6, align 8
  %129 = call i32 @gen_or(%struct.block* %127, %struct.block* %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = load i32, i32* @A_METAC, align 4
  %132 = call %struct.block* @gen_atmtype_abbrev(%struct.TYPE_7__* %130, i32 %131)
  store %struct.block* %132, %struct.block** %5, align 8
  %133 = load %struct.block*, %struct.block** %5, align 8
  %134 = load %struct.block*, %struct.block** %6, align 8
  %135 = call i32 @gen_and(%struct.block* %133, %struct.block* %134)
  br label %138

136:                                              ; preds = %2
  %137 = call i32 (...) @abort() #3
  unreachable

138:                                              ; preds = %102, %54, %27, %16
  %139 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %139
}

declare dso_local i32 @bpf_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.block* @gen_atmfield_code(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_msg_abbrev(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.block* @gen_atmtype_abbrev(%struct.TYPE_7__*, i32) #1

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
