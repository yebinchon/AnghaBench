; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_entry_print_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_entry_print_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rip_netinfo = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"\0A\09  Simple Text Authentication data: \00", align 1
@RIP_AUTHLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0A\09  Auth header:\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" Packet Len %u,\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" Key-ID %u,\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" Auth Data Len %u,\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" SeqNo %u,\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" MBZ %u,\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" MBZ %u\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\0A\09  Auth trailer:\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\0A\09  Unknown (%u) Authentication data:\00", align 1
@BSD_AFNUM_INET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"\0A\09  AFI %s\00", align 1
@bsd_af_values = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@RIP_ROUTELEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [58 x i8] c"\0A\09  AFI %s, %15s/%-2d, tag 0x%04x, metric: %u, next-hop: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rip_netinfo*, i32)* @rip_entry_print_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip_entry_print_v2(i32* %0, %struct.rip_netinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rip_netinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.rip_netinfo* %1, %struct.rip_netinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %13 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %12, i32 0, i32 5
  %14 = call i32 @EXTRACT_16BITS(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %17, label %131

17:                                               ; preds = %3
  %18 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %19 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %18, i32 0, i32 2
  %20 = call i32 @EXTRACT_16BITS(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %25 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %24, i32 0, i32 4
  %26 = bitcast i32* %25 to i8*
  store i8* %26, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([38 x i8]* @.str to i32*))
  br label %29

29:                                               ; preds = %49, %23
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @RIP_AUTHLEN, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @ND_ISPRINT(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 46, %43 ]
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %29

54:                                               ; preds = %29
  br label %130

55:                                               ; preds = %17
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.2 to i32*))
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %63 = bitcast %struct.rip_netinfo* %62 to i32*
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = call i32 @EXTRACT_16BITS(i32* %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %71 = bitcast %struct.rip_netinfo* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %79 = bitcast %struct.rip_netinfo* %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %87 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %86, i32 0, i32 3
  %88 = call i64 @EXTRACT_32BITS(i32* %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %93 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %92, i32 0, i32 0
  %94 = call i64 @EXTRACT_32BITS(i32* %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @ND_PRINT(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %99 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %98, i32 0, i32 1
  %100 = call i64 @EXTRACT_32BITS(i32* %99)
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  br label %129

103:                                              ; preds = %55
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.9 to i32*))
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %111 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %110, i32 0, i32 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @print_unknown_data(i32* %109, i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %4, align 4
  br label %192

115:                                              ; preds = %103
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %118 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %117, i32 0, i32 2
  %119 = call i32 @EXTRACT_16BITS(i32* %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i32*
  %122 = call i32 @ND_PRINT(i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %125 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %124, i32 0, i32 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @print_unknown_data(i32* %123, i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %58
  br label %130

130:                                              ; preds = %129, %54
  br label %191

131:                                              ; preds = %3
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @BSD_AFNUM_INET, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @bsd_af_values, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @tok2str(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i32*
  %145 = call i32 @ND_PRINT(i32* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %148 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %147, i32 0, i32 2
  %149 = load i32, i32* @RIP_ROUTELEN, align 4
  %150 = sub i32 %149, 2
  %151 = call i32 @print_unknown_data(i32* %146, i32* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  br label %190

152:                                              ; preds = %135, %131
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* @bsd_af_values, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @tok2str(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %159 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %158, i32 0, i32 4
  %160 = call i32 @ipaddr_string(i32* %157, i32* %159)
  %161 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %162 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %161, i32 0, i32 3
  %163 = call i64 @EXTRACT_32BITS(i32* %162)
  %164 = call i32 @mask2plen(i64 %163)
  %165 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %166 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %165, i32 0, i32 2
  %167 = call i32 @EXTRACT_16BITS(i32* %166)
  %168 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %169 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %168, i32 0, i32 1
  %170 = call i64 @EXTRACT_32BITS(i32* %169)
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @ND_PRINT(i32* %171)
  %173 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %174 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %173, i32 0, i32 0
  %175 = call i64 @EXTRACT_32BITS(i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %152
  %178 = load i32*, i32** %5, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.rip_netinfo*, %struct.rip_netinfo** %6, align 8
  %181 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %180, i32 0, i32 0
  %182 = call i32 @ipaddr_string(i32* %179, i32* %181)
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i32*
  %185 = call i32 @ND_PRINT(i32* %184)
  br label %189

186:                                              ; preds = %152
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.17 to i32*))
  br label %189

189:                                              ; preds = %186, %177
  br label %190

190:                                              ; preds = %189, %138
  br label %191

191:                                              ; preds = %190, %130
  store i32 24, i32* %4, align 4
  br label %192

192:                                              ; preds = %191, %106
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @ND_ISPRINT(i8 signext) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @print_unknown_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @mask2plen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
