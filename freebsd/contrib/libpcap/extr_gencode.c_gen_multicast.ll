; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist*, %struct.TYPE_13__ }
%struct.slist = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@abroadcast = common dso_local global i32 0, align 4
@Q_DST = common dso_local global i32 0, align 4
@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JSET = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@OR_LINKPL = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"link-layer multicast filters supported only on ethernet/FDDI/token ring/ARCNET/802.11/ATM LANE/Fibre Channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_multicast(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.slist*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %174 [
    i32 131, label %11
    i32 128, label %11
    i32 130, label %150
    i32 129, label %162
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %148 [
    i32 144, label %15
    i32 143, label %15
    i32 142, label %20
    i32 135, label %20
    i32 134, label %20
    i32 141, label %33
    i32 140, label %36
    i32 139, label %39
    i32 132, label %39
    i32 137, label %39
    i32 138, label %39
    i32 133, label %39
    i32 136, label %144
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load i32, i32* @abroadcast, align 4
  %18 = load i32, i32* @Q_DST, align 4
  %19 = call %struct.block* @gen_ahostop(%struct.TYPE_14__* %16, i32 %17, i32 %18)
  store %struct.block* %19, %struct.block** %3, align 8
  br label %177

20:                                               ; preds = %11, %11, %11
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_14__* %21)
  store %struct.block* %22, %struct.block** %7, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %23, i32 0)
  store %struct.block* %24, %struct.block** %6, align 8
  %25 = load %struct.block*, %struct.block** %7, align 8
  %26 = icmp ne %struct.block* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.block*, %struct.block** %7, align 8
  %29 = load %struct.block*, %struct.block** %6, align 8
  %30 = call i32 @gen_and(%struct.block* %28, %struct.block* %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %32, %struct.block** %3, align 8
  br label %177

33:                                               ; preds = %11
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %34, i32 1)
  store %struct.block* %35, %struct.block** %3, align 8
  br label %177

36:                                               ; preds = %11
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %37, i32 2)
  store %struct.block* %38, %struct.block** %3, align 8
  br label %177

39:                                               ; preds = %11, %11, %11, %11, %11
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load i32, i32* @OR_LINKHDR, align 4
  %42 = load i32, i32* @BPF_B, align 4
  %43 = call %struct.slist* @gen_load_a(%struct.TYPE_14__* %40, i32 %41, i32 1, i32 %42)
  store %struct.slist* %43, %struct.slist** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32, i32* @BPF_JSET, align 4
  %46 = call i32 @JMP(i32 %45)
  %47 = call %struct.block* @new_block(%struct.TYPE_14__* %44, i32 %46)
  store %struct.block* %47, %struct.block** %7, align 8
  %48 = load %struct.block*, %struct.block** %7, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.slist*, %struct.slist** %9, align 8
  %52 = load %struct.block*, %struct.block** %7, align 8
  %53 = getelementptr inbounds %struct.block, %struct.block* %52, i32 0, i32 0
  store %struct.slist* %51, %struct.slist** %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %54, i32 16)
  store %struct.block* %55, %struct.block** %6, align 8
  %56 = load %struct.block*, %struct.block** %7, align 8
  %57 = load %struct.block*, %struct.block** %6, align 8
  %58 = call i32 @gen_and(%struct.block* %56, %struct.block* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i32, i32* @OR_LINKHDR, align 4
  %61 = load i32, i32* @BPF_B, align 4
  %62 = call %struct.slist* @gen_load_a(%struct.TYPE_14__* %59, i32 %60, i32 1, i32 %61)
  store %struct.slist* %62, %struct.slist** %9, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load i32, i32* @BPF_JSET, align 4
  %65 = call i32 @JMP(i32 %64)
  %66 = call %struct.block* @new_block(%struct.TYPE_14__* %63, i32 %65)
  store %struct.block* %66, %struct.block** %8, align 8
  %67 = load %struct.block*, %struct.block** %8, align 8
  %68 = getelementptr inbounds %struct.block, %struct.block* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.slist*, %struct.slist** %9, align 8
  %71 = load %struct.block*, %struct.block** %8, align 8
  %72 = getelementptr inbounds %struct.block, %struct.block* %71, i32 0, i32 0
  store %struct.slist* %70, %struct.slist** %72, align 8
  %73 = load %struct.block*, %struct.block** %8, align 8
  %74 = call i32 @gen_not(%struct.block* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %75, i32 4)
  store %struct.block* %76, %struct.block** %7, align 8
  %77 = load %struct.block*, %struct.block** %8, align 8
  %78 = load %struct.block*, %struct.block** %7, align 8
  %79 = call i32 @gen_and(%struct.block* %77, %struct.block* %78)
  %80 = load %struct.block*, %struct.block** %7, align 8
  %81 = load %struct.block*, %struct.block** %6, align 8
  %82 = call i32 @gen_or(%struct.block* %80, %struct.block* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load i32, i32* @OR_LINKHDR, align 4
  %85 = load i32, i32* @BPF_B, align 4
  %86 = call %struct.slist* @gen_load_a(%struct.TYPE_14__* %83, i32 %84, i32 0, i32 %85)
  store %struct.slist* %86, %struct.slist** %9, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = load i32, i32* @BPF_JSET, align 4
  %89 = call i32 @JMP(i32 %88)
  %90 = call %struct.block* @new_block(%struct.TYPE_14__* %87, i32 %89)
  store %struct.block* %90, %struct.block** %7, align 8
  %91 = load %struct.block*, %struct.block** %7, align 8
  %92 = getelementptr inbounds %struct.block, %struct.block* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 8, i32* %93, align 8
  %94 = load %struct.slist*, %struct.slist** %9, align 8
  %95 = load %struct.block*, %struct.block** %7, align 8
  %96 = getelementptr inbounds %struct.block, %struct.block* %95, i32 0, i32 0
  store %struct.slist* %94, %struct.slist** %96, align 8
  %97 = load %struct.block*, %struct.block** %7, align 8
  %98 = load %struct.block*, %struct.block** %6, align 8
  %99 = call i32 @gen_and(%struct.block* %97, %struct.block* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = load i32, i32* @OR_LINKHDR, align 4
  %102 = load i32, i32* @BPF_B, align 4
  %103 = call %struct.slist* @gen_load_a(%struct.TYPE_14__* %100, i32 %101, i32 0, i32 %102)
  store %struct.slist* %103, %struct.slist** %9, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = load i32, i32* @BPF_JSET, align 4
  %106 = call i32 @JMP(i32 %105)
  %107 = call %struct.block* @new_block(%struct.TYPE_14__* %104, i32 %106)
  store %struct.block* %107, %struct.block** %8, align 8
  %108 = load %struct.block*, %struct.block** %8, align 8
  %109 = getelementptr inbounds %struct.block, %struct.block* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 8, i32* %110, align 8
  %111 = load %struct.slist*, %struct.slist** %9, align 8
  %112 = load %struct.block*, %struct.block** %8, align 8
  %113 = getelementptr inbounds %struct.block, %struct.block* %112, i32 0, i32 0
  store %struct.slist* %111, %struct.slist** %113, align 8
  %114 = load %struct.block*, %struct.block** %8, align 8
  %115 = call i32 @gen_not(%struct.block* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %116, i32 4)
  store %struct.block* %117, %struct.block** %7, align 8
  %118 = load %struct.block*, %struct.block** %8, align 8
  %119 = load %struct.block*, %struct.block** %7, align 8
  %120 = call i32 @gen_and(%struct.block* %118, %struct.block* %119)
  %121 = load %struct.block*, %struct.block** %7, align 8
  %122 = load %struct.block*, %struct.block** %6, align 8
  %123 = call i32 @gen_or(%struct.block* %121, %struct.block* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = load i32, i32* @OR_LINKHDR, align 4
  %126 = load i32, i32* @BPF_B, align 4
  %127 = call %struct.slist* @gen_load_a(%struct.TYPE_14__* %124, i32 %125, i32 0, i32 %126)
  store %struct.slist* %127, %struct.slist** %9, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = load i32, i32* @BPF_JSET, align 4
  %130 = call i32 @JMP(i32 %129)
  %131 = call %struct.block* @new_block(%struct.TYPE_14__* %128, i32 %130)
  store %struct.block* %131, %struct.block** %7, align 8
  %132 = load %struct.block*, %struct.block** %7, align 8
  %133 = getelementptr inbounds %struct.block, %struct.block* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 4, i32* %134, align 8
  %135 = load %struct.slist*, %struct.slist** %9, align 8
  %136 = load %struct.block*, %struct.block** %7, align 8
  %137 = getelementptr inbounds %struct.block, %struct.block* %136, i32 0, i32 0
  store %struct.slist* %135, %struct.slist** %137, align 8
  %138 = load %struct.block*, %struct.block** %7, align 8
  %139 = call i32 @gen_not(%struct.block* %138)
  %140 = load %struct.block*, %struct.block** %7, align 8
  %141 = load %struct.block*, %struct.block** %6, align 8
  %142 = call i32 @gen_and(%struct.block* %140, %struct.block* %141)
  %143 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %143, %struct.block** %3, align 8
  br label %177

144:                                              ; preds = %11
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = call %struct.block* @gen_mac_multicast(%struct.TYPE_14__* %145, i32 2)
  store %struct.block* %146, %struct.block** %6, align 8
  %147 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %147, %struct.block** %3, align 8
  br label %177

148:                                              ; preds = %11
  br label %149

149:                                              ; preds = %148
  br label %174

150:                                              ; preds = %2
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = load i32, i32* @ETHERTYPE_IP, align 4
  %153 = call %struct.block* @gen_linktype(%struct.TYPE_14__* %151, i32 %152)
  store %struct.block* %153, %struct.block** %6, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = load i32, i32* @OR_LINKPL, align 4
  %156 = load i32, i32* @BPF_B, align 4
  %157 = call %struct.block* @gen_cmp_ge(%struct.TYPE_14__* %154, i32 %155, i32 16, i32 %156, i32 224)
  store %struct.block* %157, %struct.block** %7, align 8
  %158 = load %struct.block*, %struct.block** %6, align 8
  %159 = load %struct.block*, %struct.block** %7, align 8
  %160 = call i32 @gen_and(%struct.block* %158, %struct.block* %159)
  %161 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %161, %struct.block** %3, align 8
  br label %177

162:                                              ; preds = %2
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %165 = call %struct.block* @gen_linktype(%struct.TYPE_14__* %163, i32 %164)
  store %struct.block* %165, %struct.block** %6, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = load i32, i32* @OR_LINKPL, align 4
  %168 = load i32, i32* @BPF_B, align 4
  %169 = call %struct.block* @gen_cmp(%struct.TYPE_14__* %166, i32 %167, i32 24, i32 %168, i32 255)
  store %struct.block* %169, %struct.block** %7, align 8
  %170 = load %struct.block*, %struct.block** %6, align 8
  %171 = load %struct.block*, %struct.block** %7, align 8
  %172 = call i32 @gen_and(%struct.block* %170, %struct.block* %171)
  %173 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %173, %struct.block** %3, align 8
  br label %177

174:                                              ; preds = %2, %149
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = call i32 @bpf_error(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %162, %150, %144, %39, %36, %33, %31, %15
  %178 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %178
}

declare dso_local %struct.block* @gen_ahostop(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_14__*) #1

declare dso_local %struct.block* @gen_mac_multicast(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.slist* @gen_load_a(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_linktype(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.block* @gen_cmp_ge(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
