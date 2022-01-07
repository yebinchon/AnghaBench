; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_read_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_read_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Protocol mismatch.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SSH-\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ssh_exchange_identification: %s\00", align 1
@SSH_ERR_NO_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SSH-%d.%d-%[^\0A]\0A\00", align 1
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Remote protocol version %d.%d, remote software version %.100s\00", align 1
@SSH_ERR_PROTOCOL_MISMATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Remote version string %.100s\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ssh_read_banner(%struct.ssh* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %18 = load i8**, i8*** %5, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.ssh*, %struct.ssh** %4, align 8
  %20 = call %struct.sshbuf* @ssh_packet_get_input(%struct.ssh* %19)
  store %struct.sshbuf* %20, %struct.sshbuf** %6, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %22 = call i64 @sshbuf_len(%struct.sshbuf* %21)
  store i64 %22, i64* %17, align 8
  %23 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %24 = call i64 @sshbuf_ptr(%struct.sshbuf* %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %7, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %26

26:                                               ; preds = %99, %2
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i64, i64* %14, align 8
  %29 = icmp ult i64 %28, 255
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %146

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %16, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %16, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  %40 = load i8, i8* %39, align 1
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %41
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 13
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %49
  store i8 10, i8* %50, align 1
  %51 = load i64, i64* %14, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  br label %65

54:                                               ; preds = %35
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  br label %68

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %14, align 8
  br label %27

68:                                               ; preds = %60, %27
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %100

74:                                               ; preds = %68
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %76 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load %struct.ssh*, %struct.ssh** %4, align 8
  %78 = getelementptr inbounds %struct.ssh, %struct.ssh* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %15, align 8
  %86 = icmp ugt i64 %85, 65536
  br i1 %86, label %87, label %99

87:                                               ; preds = %83, %74
  %88 = load %struct.ssh*, %struct.ssh** %4, align 8
  %89 = call i32 @ssh_packet_get_output(%struct.ssh* %88)
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = call i32 @sshbuf_put(i32 %89, i8* %90, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %146

97:                                               ; preds = %87
  %98 = load i32, i32* @SSH_ERR_NO_PROTOCOL_VERSION, align 4
  store i32 %98, i32* %3, align 4
  br label %146

99:                                               ; preds = %83
  br label %26

100:                                              ; preds = %73
  %101 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @sshbuf_consume(%struct.sshbuf* %101, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %146

107:                                              ; preds = %100
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %110 = call i32 @sscanf(i8* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %12, i32* %13, i8* %109)
  %111 = icmp ne i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %113, i32* %3, align 4
  br label %146

114:                                              ; preds = %107
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %118 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %116, i8* %117)
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %120 = call i32 @compat_datafellows(i8* %119)
  %121 = load %struct.ssh*, %struct.ssh** %4, align 8
  %122 = getelementptr inbounds %struct.ssh, %struct.ssh* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 99
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %125, %114
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 2
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @SSH_ERR_PROTOCOL_MISMATCH, align 4
  store i32 %133, i32* %3, align 4
  br label %146

134:                                              ; preds = %129
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %136 = call i32 @chop(i8* %135)
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %138 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %137)
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %140 = call i8* @strdup(i8* %139)
  %141 = load i8**, i8*** %5, align 8
  store i8* %140, i8** %141, align 8
  %142 = icmp eq i8* %140, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %143, %132, %112, %105, %97, %95, %34
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.sshbuf* @ssh_packet_get_input(%struct.ssh*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @sshbuf_put(i32, i8*, i32) #1

declare dso_local i32 @ssh_packet_get_output(%struct.ssh*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sshbuf_consume(%struct.sshbuf*, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @compat_datafellows(i8*) #1

declare dso_local i32 @chop(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
