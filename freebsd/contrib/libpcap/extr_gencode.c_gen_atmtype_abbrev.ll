; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmtype_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmtype_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"'metac' supported only on raw ATM\00", align 1
@A_VPI = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@A_VCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"'bcc' supported only on raw ATM\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"'oam4sc' supported only on raw ATM\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"'oam4ec' supported only on raw ATM\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"'sc' supported only on raw ATM\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"'ilmic' supported only on raw ATM\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"'lane' supported only on raw ATM\00", align 1
@A_PROTOTYPE = common dso_local global i32 0, align 4
@PT_LANE = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"'llc' supported only on raw ATM\00", align 1
@PT_LLC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_atmtype_abbrev(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %188 [
    i32 131, label %8
    i32 135, label %28
    i32 129, label %48
    i32 130, label %68
    i32 128, label %88
    i32 134, label %108
    i32 133, label %128
    i32 132, label %169
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32 @bpf_error(%struct.TYPE_12__* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = load i32, i32* @A_VPI, align 4
  %19 = load i32, i32* @BPF_JEQ, align 4
  %20 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %17, i32 %18, i32 0, i32 %19, i32 0)
  store %struct.block* %20, %struct.block** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load i32, i32* @A_VCI, align 4
  %23 = load i32, i32* @BPF_JEQ, align 4
  %24 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %21, i32 %22, i32 1, i32 %23, i32 0)
  store %struct.block* %24, %struct.block** %6, align 8
  %25 = load %struct.block*, %struct.block** %5, align 8
  %26 = load %struct.block*, %struct.block** %6, align 8
  %27 = call i32 @gen_and(%struct.block* %25, %struct.block* %26)
  br label %190

28:                                               ; preds = %2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @bpf_error(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = load i32, i32* @A_VPI, align 4
  %39 = load i32, i32* @BPF_JEQ, align 4
  %40 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %37, i32 %38, i32 0, i32 %39, i32 0)
  store %struct.block* %40, %struct.block** %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = load i32, i32* @A_VCI, align 4
  %43 = load i32, i32* @BPF_JEQ, align 4
  %44 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %41, i32 %42, i32 2, i32 %43, i32 0)
  store %struct.block* %44, %struct.block** %6, align 8
  %45 = load %struct.block*, %struct.block** %5, align 8
  %46 = load %struct.block*, %struct.block** %6, align 8
  %47 = call i32 @gen_and(%struct.block* %45, %struct.block* %46)
  br label %190

48:                                               ; preds = %2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = call i32 @bpf_error(%struct.TYPE_12__* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = load i32, i32* @A_VPI, align 4
  %59 = load i32, i32* @BPF_JEQ, align 4
  %60 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %57, i32 %58, i32 0, i32 %59, i32 0)
  store %struct.block* %60, %struct.block** %5, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load i32, i32* @A_VCI, align 4
  %63 = load i32, i32* @BPF_JEQ, align 4
  %64 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %61, i32 %62, i32 3, i32 %63, i32 0)
  store %struct.block* %64, %struct.block** %6, align 8
  %65 = load %struct.block*, %struct.block** %5, align 8
  %66 = load %struct.block*, %struct.block** %6, align 8
  %67 = call i32 @gen_and(%struct.block* %65, %struct.block* %66)
  br label %190

68:                                               ; preds = %2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = call i32 @bpf_error(%struct.TYPE_12__* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load i32, i32* @A_VPI, align 4
  %79 = load i32, i32* @BPF_JEQ, align 4
  %80 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %77, i32 %78, i32 0, i32 %79, i32 0)
  store %struct.block* %80, %struct.block** %5, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = load i32, i32* @A_VCI, align 4
  %83 = load i32, i32* @BPF_JEQ, align 4
  %84 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %81, i32 %82, i32 4, i32 %83, i32 0)
  store %struct.block* %84, %struct.block** %6, align 8
  %85 = load %struct.block*, %struct.block** %5, align 8
  %86 = load %struct.block*, %struct.block** %6, align 8
  %87 = call i32 @gen_and(%struct.block* %85, %struct.block* %86)
  br label %190

88:                                               ; preds = %2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = call i32 @bpf_error(%struct.TYPE_12__* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = load i32, i32* @A_VPI, align 4
  %99 = load i32, i32* @BPF_JEQ, align 4
  %100 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %97, i32 %98, i32 0, i32 %99, i32 0)
  store %struct.block* %100, %struct.block** %5, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = load i32, i32* @A_VCI, align 4
  %103 = load i32, i32* @BPF_JEQ, align 4
  %104 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %101, i32 %102, i32 5, i32 %103, i32 0)
  store %struct.block* %104, %struct.block** %6, align 8
  %105 = load %struct.block*, %struct.block** %5, align 8
  %106 = load %struct.block*, %struct.block** %6, align 8
  %107 = call i32 @gen_and(%struct.block* %105, %struct.block* %106)
  br label %190

108:                                              ; preds = %2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = call i32 @bpf_error(%struct.TYPE_12__* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = load i32, i32* @A_VPI, align 4
  %119 = load i32, i32* @BPF_JEQ, align 4
  %120 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %117, i32 %118, i32 0, i32 %119, i32 0)
  store %struct.block* %120, %struct.block** %5, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = load i32, i32* @A_VCI, align 4
  %123 = load i32, i32* @BPF_JEQ, align 4
  %124 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %121, i32 %122, i32 16, i32 %123, i32 0)
  store %struct.block* %124, %struct.block** %6, align 8
  %125 = load %struct.block*, %struct.block** %5, align 8
  %126 = load %struct.block*, %struct.block** %6, align 8
  %127 = call i32 @gen_and(%struct.block* %125, %struct.block* %126)
  br label %190

128:                                              ; preds = %2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = call i32 @bpf_error(%struct.TYPE_12__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = load i32, i32* @A_PROTOTYPE, align 4
  %139 = load i32, i32* @PT_LANE, align 4
  %140 = load i32, i32* @BPF_JEQ, align 4
  %141 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %137, i32 %138, i32 %139, i32 %140, i32 0)
  store %struct.block* %141, %struct.block** %6, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = load i32, i32* @DLT_EN10MB, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 2
  %148 = call i32 @PUSH_LINKHDR(%struct.TYPE_12__* %142, i32 %143, i32 0, i32 %147, i32 -1)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 12
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 14
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 4
  store i32 0, i32* %166, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 3, i32* %168, align 4
  br label %190

169:                                              ; preds = %2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = call i32 @bpf_error(%struct.TYPE_12__* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %169
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = load i32, i32* @A_PROTOTYPE, align 4
  %180 = load i32, i32* @PT_LLC, align 4
  %181 = load i32, i32* @BPF_JEQ, align 4
  %182 = call %struct.block* @gen_atmfield_code(%struct.TYPE_12__* %178, i32 %179, i32 %180, i32 %181, i32 0)
  store %struct.block* %182, %struct.block** %6, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %190

188:                                              ; preds = %2
  %189 = call i32 (...) @abort() #3
  unreachable

190:                                              ; preds = %177, %136, %116, %96, %76, %56, %36, %16
  %191 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %191
}

declare dso_local i32 @bpf_error(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.block* @gen_atmfield_code(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @PUSH_LINKHDR(%struct.TYPE_12__*, i32, i32, i32, i32) #1

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
