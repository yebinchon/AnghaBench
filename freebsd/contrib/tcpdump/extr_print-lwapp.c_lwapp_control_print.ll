; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwapp.c_lwapp_control_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwapp.c_lwapp_control_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.lwapp_transport_header = type { i32, i32, i32 }
%struct.lwapp_control_header = type { i32, i32, i32, i32 }

@LWAPP_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"LWAPP version %u packet not supported\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LWAPPv%u, %s frame, Flags [%s], length %u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@lwapp_header_bits_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"LWAPPv%u, %s frame, Radio-id %u, Flags [%s], Frag-id %u, length %u\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A\09AP identity: %s\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"\0A\09  Msg type: %s (%u), Seqnum: %u, Msg len: %d, Session: 0x%08x\00", align 1
@lwapp_msg_type_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\0A\09\09 packet exceeded snapshot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwapp_control_print(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lwapp_transport_header*, align 8
  %10 = alloca %struct.lwapp_control_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca { i64, i32 }, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK2(i32 %20, i32 6)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 6
  %24 = bitcast i32* %23 to %struct.lwapp_transport_header*
  store %struct.lwapp_transport_header* %24, %struct.lwapp_transport_header** %9, align 8
  br label %28

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to %struct.lwapp_transport_header*
  store %struct.lwapp_transport_header* %27, %struct.lwapp_transport_header** %9, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %30 = bitcast { i64, i32 }* %14 to i8*
  %31 = bitcast %struct.lwapp_transport_header* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %33 = load i64, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK(i64 %33, i32 %35)
  %37 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %38 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @LWAPP_EXTRACT_VERSION(i32 %39)
  %41 = load i64, i64* @LWAPP_VERSION, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %46 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @LWAPP_EXTRACT_VERSION(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_5__* %49)
  br label %188

51:                                               ; preds = %28
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %59 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @LWAPP_EXTRACT_VERSION(i32 %60)
  %62 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %63 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @LWAPP_EXTRACT_CONTROL_BIT(i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %69 = load i32, i32* @lwapp_header_bits_values, align 4
  %70 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %71 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 7
  %74 = call i32 @bittok2str(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_5__*
  %78 = call i32 @ND_PRINT(%struct.TYPE_5__* %77)
  br label %188

79:                                               ; preds = %51
  %80 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %81 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @EXTRACT_16BITS(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %86 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @LWAPP_EXTRACT_VERSION(i32 %87)
  %89 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %90 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @LWAPP_EXTRACT_CONTROL_BIT(i32 %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %96 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %97 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @LWAPP_EXTRACT_RID(i32 %98)
  %100 = load i32, i32* @lwapp_header_bits_values, align 4
  %101 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %102 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 7
  %105 = call i32 @bittok2str(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %9, align 8
  %107 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.TYPE_5__*
  %112 = call i32 @ND_PRINT(%struct.TYPE_5__* %111)
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %79
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @etheraddr_string(%struct.TYPE_5__* %117, i32* %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_5__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_5__* %121)
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 18
  store i32* %124, i32** %11, align 8
  br label %128

125:                                              ; preds = %79
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 12
  store i32* %127, i32** %11, align 8
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %171, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %184

132:                                              ; preds = %129
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ND_TCHECK2(i32 %134, i32 16)
  %136 = load i32*, i32** %11, align 8
  %137 = bitcast i32* %136 to %struct.lwapp_control_header*
  store %struct.lwapp_control_header* %137, %struct.lwapp_control_header** %10, align 8
  %138 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %139 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @EXTRACT_16BITS(i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = load i32, i32* @lwapp_msg_type_values, align 4
  %144 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %145 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @tok2str(i32 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %149 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %152 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %156 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @EXTRACT_32BITS(i32 %157)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_5__*
  %161 = call i32 @ND_PRINT(%struct.TYPE_5__* %160)
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @ND_TCHECK2(i32 %163, i32 %164)
  %166 = load %struct.lwapp_control_header*, %struct.lwapp_control_header** %10, align 8
  %167 = getelementptr inbounds %struct.lwapp_control_header, %struct.lwapp_control_header* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %170 [
    i32 149, label %169
    i32 148, label %169
    i32 141, label %169
    i32 140, label %169
    i32 143, label %169
    i32 142, label %169
    i32 155, label %169
    i32 154, label %169
    i32 153, label %169
    i32 152, label %169
    i32 129, label %169
    i32 128, label %169
    i32 158, label %169
    i32 157, label %169
    i32 147, label %169
    i32 146, label %169
    i32 145, label %169
    i32 144, label %169
    i32 133, label %169
    i32 132, label %169
    i32 139, label %169
    i32 138, label %169
    i32 135, label %169
    i32 134, label %169
    i32 151, label %169
    i32 150, label %169
    i32 156, label %169
    i32 131, label %169
    i32 130, label %169
    i32 137, label %169
    i32 136, label %169
  ]

169:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132
  br label %170

170:                                              ; preds = %132, %169
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 16, %173
  %175 = load i32*, i32** %11, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 %174
  store i32* %176, i32** %11, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 16, %178
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = sub i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %12, align 4
  br label %129

184:                                              ; preds = %129
  br label %188

185:                                              ; No predecessors!
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([29 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %188

188:                                              ; preds = %185, %184, %56, %43
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @LWAPP_EXTRACT_VERSION(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i64 @LWAPP_EXTRACT_CONTROL_BIT(i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32) #1

declare dso_local i32 @LWAPP_EXTRACT_RID(i32) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
