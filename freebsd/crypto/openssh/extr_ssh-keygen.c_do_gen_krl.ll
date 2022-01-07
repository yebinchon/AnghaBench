; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_gen_krl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_gen_krl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.ssh_krl = type { i32 }
%struct.stat = type { i32 }
%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@identity_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"KRL generation requires an output file\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot access KRL \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"KRL \22%s\22 does not exist\00", align 1
@ca_key_path = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot load CA public key %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"couldn't create KRL\00", align 1
@cert_serial = common dso_local global i64 0, align 8
@identity_comment = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"sshbuf_new failed\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Couldn't generate KRL\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"open %s: %s\00", align 1
@vwrite = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"write %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i32, i32, i8**)* @do_gen_krl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_gen_krl(%struct.passwd* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ssh_krl*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sshbuf*, align 8
  store %struct.passwd* %0, %struct.passwd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store %struct.sshkey* null, %struct.sshkey** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i8*, i8** @identity_file, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i8*, i8** @identity_file, align 8
  %26 = call i32 @stat(i8* %25, %struct.stat* %10)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** @identity_file, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @strerror(i64 %34)
  %36 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** @identity_file, align 8
  %42 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** @ca_key_path, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32*, i32** @ca_key_path, align 8
  %49 = call i64 @strcasecmp(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  br label %69

52:                                               ; preds = %47
  %53 = load i32*, i32** @ca_key_path, align 8
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @tilde_expand_filename(i32* %53, i32 %56)
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @sshkey_load_public(i8* %58, %struct.sshkey** %11, i32* null)
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @ssh_err(i32 %63)
  %65 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %66, %51
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** @identity_file, align 8
  %75 = call i32 @load_krl(i8* %74, %struct.ssh_krl** %9)
  br label %82

76:                                               ; preds = %70
  %77 = call %struct.ssh_krl* (...) @ssh_krl_init()
  store %struct.ssh_krl* %77, %struct.ssh_krl** %9, align 8
  %78 = icmp eq %struct.ssh_krl* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i64, i64* @cert_serial, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.ssh_krl*, %struct.ssh_krl** %9, align 8
  %87 = load i64, i64* @cert_serial, align 8
  %88 = call i32 @ssh_krl_set_version(%struct.ssh_krl* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32*, i32** @identity_comment, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.ssh_krl*, %struct.ssh_krl** %9, align 8
  %94 = load i32*, i32** @identity_comment, align 8
  %95 = call i32 @ssh_krl_set_comment(%struct.ssh_krl* %93, i32* %94)
  br label %96

96:                                               ; preds = %92, %89
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %112, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.passwd*, %struct.passwd** %5, align 8
  %103 = load i8**, i8*** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %110 = load %struct.ssh_krl*, %struct.ssh_krl** %9, align 8
  %111 = call i32 @update_krl_from_file(%struct.passwd* %102, i8* %107, i32 %108, %struct.sshkey* %109, %struct.ssh_krl* %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %97

115:                                              ; preds = %97
  %116 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %116, %struct.sshbuf** %17, align 8
  %117 = icmp eq %struct.sshbuf* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  %121 = load %struct.ssh_krl*, %struct.ssh_krl** %9, align 8
  %122 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %123 = call i64 @ssh_krl_to_blob(%struct.ssh_krl* %121, %struct.sshbuf* %122, i32* null, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %120
  %128 = load i8*, i8** @identity_file, align 8
  %129 = load i32, i32* @O_WRONLY, align 4
  %130 = load i32, i32* @O_CREAT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @O_TRUNC, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @open(i8* %128, i32 %133, i32 420)
  store i32 %134, i32* %12, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load i8*, i8** @identity_file, align 8
  %138 = load i64, i64* @errno, align 8
  %139 = call i32 @strerror(i64 %138)
  %140 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %137, i32 %139)
  br label %141

141:                                              ; preds = %136, %127
  %142 = load i32, i32* @vwrite, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %145 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %144)
  %146 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %147 = call i64 @sshbuf_len(%struct.sshbuf* %146)
  %148 = call i64 @atomicio(i32 %142, i32 %143, i32 %145, i64 %147)
  %149 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %150 = call i64 @sshbuf_len(%struct.sshbuf* %149)
  %151 = icmp ne i64 %148, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %141
  %153 = load i8*, i8** @identity_file, align 8
  %154 = load i64, i64* @errno, align 8
  %155 = call i32 @strerror(i64 %154)
  %156 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %153, i32 %155)
  br label %157

157:                                              ; preds = %152, %141
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @close(i32 %158)
  %160 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %161 = call i32 @sshbuf_free(%struct.sshbuf* %160)
  %162 = load %struct.ssh_krl*, %struct.ssh_krl** %9, align 8
  %163 = call i32 @ssh_krl_free(%struct.ssh_krl* %162)
  %164 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %165 = call i32 @sshkey_free(%struct.sshkey* %164)
  ret void
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i8* @tilde_expand_filename(i32*, i32) #1

declare dso_local i32 @sshkey_load_public(i8*, %struct.sshkey**, i32*) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @load_krl(i8*, %struct.ssh_krl**) #1

declare dso_local %struct.ssh_krl* @ssh_krl_init(...) #1

declare dso_local i32 @ssh_krl_set_version(%struct.ssh_krl*, i64) #1

declare dso_local i32 @ssh_krl_set_comment(%struct.ssh_krl*, i32*) #1

declare dso_local i32 @update_krl_from_file(%struct.passwd*, i8*, i32, %struct.sshkey*, %struct.ssh_krl*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i64 @ssh_krl_to_blob(%struct.ssh_krl*, %struct.sshbuf*, i32*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @atomicio(i32, i32, i32, i64) #1

declare dso_local i32 @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @ssh_krl_free(%struct.ssh_krl*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
