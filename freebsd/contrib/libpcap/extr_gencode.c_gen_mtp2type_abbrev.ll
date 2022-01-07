; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mtp2type_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mtp2type_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DLT_MTP2 = common dso_local global i32 0, align 4
@DLT_ERF = common dso_local global i32 0, align 4
@DLT_MTP2_WITH_PHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"'fisu' supported only on MTP2\00", align 1
@OR_PACKET = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"'lssu' supported only on MTP2\00", align 1
@BPF_JGT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"'msu' supported only on MTP2\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"'hfisu' supported only on MTP2_HSL\00", align 1
@BPF_H = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"'hlssu' supported only on MTP2_HSL\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"'hmsu' supported only on MTP2_HSL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_mtp2type_abbrev(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %210 [
    i32 130, label %8
    i32 129, label %38
    i32 128, label %79
    i32 133, label %109
    i32 132, label %139
    i32 131, label %180
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DLT_MTP2, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DLT_ERF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @bpf_error(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20, %14, %8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load i32, i32* @OR_PACKET, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BPF_B, align 4
  %36 = load i32, i32* @BPF_JEQ, align 4
  %37 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %30, i32 %31, i32 %34, i32 %35, i32 63, i32 %36, i32 0, i32 0)
  store %struct.block* %37, %struct.block** %5, align 8
  br label %212

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DLT_MTP2, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DLT_ERF, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = call i32 @bpf_error(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50, %44, %38
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = load i32, i32* @OR_PACKET, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BPF_B, align 4
  %66 = load i32, i32* @BPF_JGT, align 4
  %67 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %60, i32 %61, i32 %64, i32 %65, i32 63, i32 %66, i32 1, i32 2)
  store %struct.block* %67, %struct.block** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = load i32, i32* @OR_PACKET, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BPF_B, align 4
  %74 = load i32, i32* @BPF_JGT, align 4
  %75 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %68, i32 %69, i32 %72, i32 %73, i32 63, i32 %74, i32 0, i32 0)
  store %struct.block* %75, %struct.block** %6, align 8
  %76 = load %struct.block*, %struct.block** %6, align 8
  %77 = load %struct.block*, %struct.block** %5, align 8
  %78 = call i32 @gen_and(%struct.block* %76, %struct.block* %77)
  br label %212

79:                                               ; preds = %2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DLT_MTP2, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DLT_ERF, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = call i32 @bpf_error(%struct.TYPE_5__* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91, %85, %79
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = load i32, i32* @OR_PACKET, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BPF_B, align 4
  %107 = load i32, i32* @BPF_JGT, align 4
  %108 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %101, i32 %102, i32 %105, i32 %106, i32 63, i32 %107, i32 0, i32 2)
  store %struct.block* %108, %struct.block** %5, align 8
  br label %212

109:                                              ; preds = %2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DLT_MTP2, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DLT_ERF, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = call i32 @bpf_error(%struct.TYPE_5__* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %121, %115, %109
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = load i32, i32* @OR_PACKET, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BPF_H, align 4
  %137 = load i32, i32* @BPF_JEQ, align 4
  %138 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %131, i32 %132, i32 %135, i32 %136, i32 65408, i32 %137, i32 0, i32 0)
  store %struct.block* %138, %struct.block** %5, align 8
  br label %212

139:                                              ; preds = %2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @DLT_MTP2, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DLT_ERF, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = call i32 @bpf_error(%struct.TYPE_5__* %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %151, %145, %139
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = load i32, i32* @OR_PACKET, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @BPF_H, align 4
  %167 = load i32, i32* @BPF_JGT, align 4
  %168 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %161, i32 %162, i32 %165, i32 %166, i32 65408, i32 %167, i32 1, i32 256)
  store %struct.block* %168, %struct.block** %5, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = load i32, i32* @OR_PACKET, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @BPF_H, align 4
  %175 = load i32, i32* @BPF_JGT, align 4
  %176 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %169, i32 %170, i32 %173, i32 %174, i32 65408, i32 %175, i32 0, i32 0)
  store %struct.block* %176, %struct.block** %6, align 8
  %177 = load %struct.block*, %struct.block** %6, align 8
  %178 = load %struct.block*, %struct.block** %5, align 8
  %179 = call i32 @gen_and(%struct.block* %177, %struct.block* %178)
  br label %212

180:                                              ; preds = %2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @DLT_MTP2, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DLT_ERF, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @DLT_MTP2_WITH_PHDR, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = call i32 @bpf_error(%struct.TYPE_5__* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %192, %186, %180
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = load i32, i32* @OR_PACKET, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @BPF_H, align 4
  %208 = load i32, i32* @BPF_JGT, align 4
  %209 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %202, i32 %203, i32 %206, i32 %207, i32 65408, i32 %208, i32 0, i32 256)
  store %struct.block* %209, %struct.block** %5, align 8
  br label %212

210:                                              ; preds = %2
  %211 = call i32 (...) @abort() #3
  unreachable

212:                                              ; preds = %201, %160, %130, %100, %59, %29
  %213 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %213
}

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.block* @gen_ncmp(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

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
