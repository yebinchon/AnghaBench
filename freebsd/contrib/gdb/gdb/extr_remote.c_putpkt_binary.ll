; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_putpkt_binary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_putpkt_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i64 }

@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending packet: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@remote_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"putpkt: write failed\00", align 1
@remote_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Ack\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Nak\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Packet instead of Ack, ignoring it\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"putpkt: Junk: \00", align 1
@quit_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @putpkt_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @putpkt_binary(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.remote_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %16, %struct.remote_state** %6, align 8
  store i8 0, i8* %8, align 1
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 6
  %19 = sext i32 %18 to i64
  %20 = call i8* @alloca(i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load %struct.remote_state*, %struct.remote_state** %6, align 8
  %22 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i8* @alloca(i64 %24)
  store i8* %25, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %14, align 8
  store i8 36, i8* %27, align 1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %51, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %14, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %14, align 8
  store i8 35, i8* %55, align 1
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  %61 = trunc i32 %60 to i8
  %62 = call i8* @tohex(i8 zeroext %61)
  %63 = ptrtoint i8* %62 to i8
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 15
  %69 = trunc i32 %68 to i8
  %70 = call i8* @tohex(i8 zeroext %69)
  %71 = ptrtoint i8* %70 to i8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %14, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %54, %171
  store i32 0, i32* %15, align 4
  %75 = load i64, i64* @remote_debug, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i8*, i8** %14, align 8
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* @gdb_stdlog, align 4
  %80 = call i32 @fprintf_unfiltered(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @gdb_stdlog, align 4
  %89 = call i32 @fputstrn_unfiltered(i8* %81, i32 %87, i32 0, i32 %88)
  %90 = load i32, i32* @gdb_stdlog, align 4
  %91 = call i32 @fprintf_unfiltered(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @gdb_stdlog, align 4
  %93 = call i32 @gdb_flush(i32 %92)
  br label %94

94:                                               ; preds = %77, %74
  %95 = load i32, i32* @remote_desc, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i64 @serial_write(i32 %95, i8* %96, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = call i32 @perror_with_name(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %94
  br label %108

108:                                              ; preds = %107, %151, %169
  %109 = load i32, i32* @remote_timeout, align 4
  %110 = call i32 @readchar(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i64, i64* @remote_debug, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  switch i32 %114, label %121 [
    i32 43, label %115
    i32 45, label %115
    i32 128, label %115
    i32 36, label %115
  ]

115:                                              ; preds = %113, %113, %113, %113
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @putchar_unfiltered(i8 signext 10)
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %118, %115
  br label %121

121:                                              ; preds = %120, %113
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* %12, align 4
  switch i32 %123, label %155 [
    i32 43, label %124
    i32 45, label %131
    i32 128, label %138
    i32 36, label %145
  ]

124:                                              ; preds = %122
  %125 = load i64, i64* @remote_debug, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @gdb_stdlog, align 4
  %129 = call i32 @fprintf_unfiltered(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  store i32 1, i32* %3, align 4
  br label %172

131:                                              ; preds = %122
  %132 = load i64, i64* @remote_debug, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @gdb_stdlog, align 4
  %136 = call i32 @fprintf_unfiltered(i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %122, %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %141, 3
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %172

144:                                              ; preds = %138
  br label %170

145:                                              ; preds = %122
  %146 = load i64, i64* @remote_debug, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @gdb_stdlog, align 4
  %150 = call i32 @fprintf_unfiltered(i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i8*, i8** %11, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @read_frame(i8* %152, i64 %153)
  br label %108

155:                                              ; preds = %122
  %156 = load i64, i64* @remote_debug, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  store i32 1, i32* %15, align 4
  %162 = load i32, i32* @gdb_stdlog, align 4
  %163 = call i32 @fprintf_unfiltered(i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %12, align 4
  %166 = and i32 %165, 127
  %167 = load i32, i32* @gdb_stdlog, align 4
  %168 = call i32 @fputc_unfiltered(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %155
  br label %108

170:                                              ; preds = %144
  br label %171

171:                                              ; preds = %170
  br label %74

172:                                              ; preds = %143, %130
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i8* @tohex(i8 zeroext) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @fputstrn_unfiltered(i8*, i32, i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i64 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @putchar_unfiltered(i8 signext) #1

declare dso_local i32 @read_frame(i8*, i64) #1

declare dso_local i32 @fputc_unfiltered(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
