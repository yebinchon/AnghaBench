; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_packet_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_packet_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 (i64*, i64)* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.icmp = type { i64, i64, %struct.TYPE_4__, i32, i32 }
%struct.ip = type { i32, i32 }
%struct.my_pmtu = type { i32 }

@ICMP_MINLEN = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"packet too short (%d bytes) from %s\0A\00", align 1
@ICMP_UNREACH_NEEDFRAG = common dso_local global i64 0, align 8
@pmtu = common dso_local global i64 0, align 8
@ICMP_ECHOREPLY = common dso_local global i64 0, align 8
@proto = common dso_local global %struct.TYPE_3__* null, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@ICMP_TIMXCEED = common dso_local global i64 0, align 8
@ICMP_TIMXCEED_INTRANS = common dso_local global i64 0, align 8
@ICMP_UNREACH = common dso_local global i64 0, align 8
@hip = common dso_local global %struct.TYPE_4__* null, align 8
@hiplen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A%d bytes from %s to \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: icmp type %d (%s) code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%2d: %8.8x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_ok(i64* %0, i32 %1, %struct.sockaddr_in* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.icmp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64*, i64** %6, align 8
  %19 = bitcast i64* %18 to %struct.ip*
  store %struct.ip* %19, %struct.ip** %14, align 8
  %20 = load %struct.ip*, %struct.ip** %14, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @ICMP_MINLEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load i64, i64* @verbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @inet_ntoa(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = call i32 (i8*, i32, i64, ...) @Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %203

41:                                               ; preds = %4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = bitcast i64* %48 to %struct.icmp*
  store %struct.icmp* %49, %struct.icmp** %10, align 8
  %50 = load %struct.icmp*, %struct.icmp** %10, align 8
  %51 = getelementptr inbounds %struct.icmp, %struct.icmp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.icmp*, %struct.icmp** %10, align 8
  %54 = getelementptr inbounds %struct.icmp, %struct.icmp* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @ICMP_UNREACH_NEEDFRAG, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i64 0, i64* @pmtu, align 8
  br label %67

60:                                               ; preds = %41
  %61 = load %struct.icmp*, %struct.icmp** %10, align 8
  %62 = getelementptr inbounds %struct.icmp, %struct.icmp* %61, i32 0, i32 3
  %63 = bitcast i32* %62 to %struct.my_pmtu*
  %64 = getelementptr inbounds %struct.my_pmtu, %struct.my_pmtu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ntohs(i32 %65)
  store i64 %66, i64* @pmtu, align 8
  br label %67

67:                                               ; preds = %60, %59
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @ICMP_ECHOREPLY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IPPROTO_ICMP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64 (i64*, i64)*, i64 (i64*, i64)** %79, align 8
  %81 = load %struct.icmp*, %struct.icmp** %10, align 8
  %82 = bitcast %struct.icmp* %81 to i64*
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = call i64 %80(i64* %82, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 -2, i32* %5, align 4
  br label %203

88:                                               ; preds = %77, %71, %67
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @ICMP_TIMXCEED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @ICMP_TIMXCEED_INTRANS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92, %88
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @ICMP_UNREACH, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %157

100:                                              ; preds = %96, %92
  %101 = load %struct.icmp*, %struct.icmp** %10, align 8
  %102 = getelementptr inbounds %struct.icmp, %struct.icmp* %101, i32 0, i32 2
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** @hip, align 8
  %103 = load %struct.icmp*, %struct.icmp** %10, align 8
  %104 = bitcast %struct.icmp* %103 to i64*
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hip, align 8
  %109 = bitcast %struct.TYPE_4__* %108 to i64*
  %110 = ptrtoint i64* %107 to i64
  %111 = ptrtoint i64* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* @hiplen, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hip, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 2
  store i32 %118, i32* %13, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hip, align 8
  %120 = bitcast %struct.TYPE_4__* %119 to i64*
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64* %123, i64** %15, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 16
  %126 = load i32, i32* %7, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %100
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hip, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %128
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64 (i64*, i64)*, i64 (i64*, i64)** %138, align 8
  %140 = load i64*, i64** %15, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = call i64 %139(i64* %140, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %136
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @ICMP_TIMXCEED, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %153

150:                                              ; preds = %145
  %151 = load i64, i64* %12, align 8
  %152 = add nsw i64 %151, 1
  br label %153

153:                                              ; preds = %150, %149
  %154 = phi i64 [ -1, %149 ], [ %152, %150 ]
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %203

156:                                              ; preds = %136, %128, %100
  br label %157

157:                                              ; preds = %156, %96
  %158 = load i64, i64* @verbose, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %202

160:                                              ; preds = %157
  %161 = load %struct.icmp*, %struct.icmp** %10, align 8
  %162 = getelementptr inbounds %struct.icmp, %struct.icmp* %161, i32 0, i32 2
  %163 = bitcast %struct.TYPE_4__* %162 to i32*
  store i32* %163, i32** %17, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %166 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @inet_ntoa(i32 %167)
  %169 = sext i32 %168 to i64
  %170 = call i32 (i8*, i32, i64, ...) @Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %164, i64 %169)
  %171 = load %struct.ip*, %struct.ip** %14, align 8
  %172 = getelementptr inbounds %struct.ip, %struct.ip* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @inet_ntoa(i32 %173)
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @pr_type(i64 %176)
  %178 = load %struct.icmp*, %struct.icmp** %10, align 8
  %179 = getelementptr inbounds %struct.icmp, %struct.icmp* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, i32, i64, ...) @Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %174, i64 %175, i32 %177, i64 %180)
  store i32 4, i32* %16, align 4
  br label %182

182:                                              ; preds = %196, %160
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @ICMP_MINLEN, align 4
  %186 = sub nsw i32 %184, %185
  %187 = icmp sle i32 %183, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load i32, i32* %16, align 4
  %190 = load i32*, i32** %17, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %17, align 8
  %192 = load i32, i32* %190, align 4
  %193 = call i32 @ntohl(i32 %192)
  %194 = sext i32 %193 to i64
  %195 = call i32 (i8*, i32, i64, ...) @Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %189, i64 %194)
  br label %196

196:                                              ; preds = %188
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 4
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %16, align 4
  br label %182

201:                                              ; preds = %182
  br label %202

202:                                              ; preds = %201, %157
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %202, %153, %87, %40
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @Printf(i8*, i32, i64, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @pr_type(i64) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
