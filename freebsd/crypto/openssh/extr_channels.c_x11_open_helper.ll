; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_x11_open_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_x11_open_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { i64, i64, i64, i32, i32, i32 }
%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Rejected X11 connection after ForwardX11Timeout expired\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Initial X11 packet contains bad byte order byte: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"X11 connection uses different authentication protocol.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"X11 auth data does not match fake data.\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"X11 fake_data_len %d != saved_data_len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshbuf*)* @x11_open_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11_open_helper(%struct.ssh* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca %struct.ssh_channels*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  %10 = load %struct.ssh*, %struct.ssh** %4, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0
  %12 = load %struct.ssh_channels*, %struct.ssh_channels** %11, align 8
  store %struct.ssh_channels* %12, %struct.ssh_channels** %6, align 8
  %13 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %14 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = call i64 (...) @monotime()
  %19 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %20 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @verbose(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %172

25:                                               ; preds = %17, %2
  %26 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %27 = call i32 @sshbuf_len(%struct.sshbuf* %26)
  %28 = icmp slt i32 %27, 12
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %172

30:                                               ; preds = %25
  %31 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %32 = call i32* @sshbuf_mutable_ptr(%struct.sshbuf* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 66
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 256, %40
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 256, %49
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 9
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %9, align 8
  br label %86

56:                                               ; preds = %30
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 108
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 256, %67
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 9
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 256, %76
  %78 = add nsw i32 %73, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %9, align 8
  br label %85

80:                                               ; preds = %56
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 -1, i32* %3, align 4
  br label %172

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %85, %37
  %87 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %88 = call i32 @sshbuf_len(%struct.sshbuf* %87)
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 3
  %92 = and i64 %91, -4
  %93 = add nsw i64 12, %92
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, 3
  %96 = and i64 %95, -4
  %97 = add nsw i64 %93, %96
  %98 = icmp slt i64 %89, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %172

100:                                              ; preds = %86
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %103 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strlen(i32 %104)
  %106 = icmp ne i64 %101, %105
  br i1 %106, label %116, label %107

107:                                              ; preds = %100
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 12
  %110 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %111 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @memcmp(i32* %109, i32 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107, %100
  %117 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %172

118:                                              ; preds = %107
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %121 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %139, label %124

124:                                              ; preds = %118
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = load i64, i64* %8, align 8
  %128 = add nsw i64 %127, 3
  %129 = and i64 %128, -4
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %132 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %135 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @timingsafe_bcmp(i32* %130, i32 %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %124, %118
  %140 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %172

141:                                              ; preds = %124
  %142 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %143 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %146 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %151 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %154 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %152, i64 %155)
  store i32 -1, i32* %3, align 4
  br label %172

157:                                              ; preds = %141
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 12
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %160, 3
  %162 = and i64 %161, -4
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %165 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ssh_channels*, %struct.ssh_channels** %6, align 8
  %168 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = call i32 @memcpy(i32* %163, i32 %166, i8* %170)
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %157, %149, %139, %116, %99, %80, %29, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @monotime(...) #1

declare dso_local i32 @verbose(i8*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i64) #1

declare dso_local i64 @timingsafe_bcmp(i32*, i32, i64) #1

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
