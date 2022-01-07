; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_packet_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_packet_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sshbuf = type { i32 }
%struct.hook_ctx = type { i32*, i32*, i32, i32, i32*, i32*, %struct.ssh* }

@S2C = common dso_local global i32 0, align 4
@C2S = common dso_local global i32 0, align 4
@do_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s packet %d type %u:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"s2c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"c2s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"***** replaced packet type %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fopen %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fwrite type %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fwrite body %s\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"***** dumped packet type %u len %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshbuf*, i32*, i8*)* @packet_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_hook(%struct.ssh* %0, %struct.sshbuf* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hook_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.hook_ctx*
  store %struct.hook_ctx* %16, %struct.hook_ctx** %10, align 8
  %17 = load %struct.ssh*, %struct.ssh** %6, align 8
  %18 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %18, i32 0, i32 6
  %20 = load %struct.ssh*, %struct.ssh** %19, align 8
  %21 = icmp eq %struct.ssh* %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @S2C, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @C2S, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @S2C, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32* [ %34, %31 ], [ %38, %35 ]
  store i32* %40, i32** %12, align 8
  %41 = load i64, i64* @do_debug, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @S2C, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50, i32 %52)
  %54 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @sshbuf_dump(%struct.sshbuf* %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %39
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %162

63:                                               ; preds = %57
  %64 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %162

70:                                               ; preds = %63
  %71 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %77 = call i32 @sshbuf_reset(%struct.sshbuf* %76)
  %78 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %79 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @sshbuf_get_u8(i32* %80, i32* %81)
  store i32 %82, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %75
  %85 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %86 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @sshbuf_putb(%struct.sshbuf* %85, i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84, %75
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %5, align 4
  br label %166

93:                                               ; preds = %84
  %94 = load i64, i64* @do_debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %101 = load i32, i32* @stdout, align 4
  %102 = call i32 @sshbuf_dump(%struct.sshbuf* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %93
  br label %161

104:                                              ; preds = %70
  %105 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %160

109:                                              ; preds = %104
  %110 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i32* @fopen(i32* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %113, i32** %13, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %117 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @fwrite(i32* %121, i32 1, i32 1, i32* %122)
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %127 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %132 = call i32 @sshbuf_len(%struct.sshbuf* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %136 = call i32* @sshbuf_ptr(%struct.sshbuf* %135)
  %137 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %138 = call i32 @sshbuf_len(%struct.sshbuf* %137)
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @fwrite(i32* %136, i32 %138, i32 1, i32* %139)
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.hook_ctx*, %struct.hook_ctx** %10, align 8
  %144 = getelementptr inbounds %struct.hook_ctx, %struct.hook_ctx* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %145)
  br label %147

147:                                              ; preds = %142, %134, %130
  %148 = load i64, i64* @do_debug, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %154 = call i32 @sshbuf_len(%struct.sshbuf* %153)
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %152, i32 %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32*, i32** %13, align 8
  %158 = call i32 @fclose(i32* %157)
  %159 = call i32 @exit(i32 0) #3
  unreachable

160:                                              ; preds = %104
  br label %161

161:                                              ; preds = %160, %103
  br label %162

162:                                              ; preds = %161, %63, %57
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %91
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sshbuf_dump(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u8(i32*, i32*) #1

declare dso_local i32 @sshbuf_putb(%struct.sshbuf*, i32*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @err(i32, i8*, i32*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
