; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_passwd_changereq.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_passwd_changereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.ssh = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [32 x i8] c"input_userauth_passwd_changereq\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"input_userauth_passwd_changereq: no authentication context\00", align 1
@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SSH2_MSG_USERAUTH_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Enter %.30s@%.128s's old password: \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Enter %.30s@%.128s's new password: \00", align 1
@RP_ALLOW_EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Retype %.30s@%.128s's new password: \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Mismatch; try again, EOF to quit.\00", align 1
@SSH2_MSG_USERAUTH_PASSWD_CHANGEREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_userauth_passwd_changereq(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %15 = load %struct.ssh*, %struct.ssh** %6, align 8
  %16 = getelementptr inbounds %struct.ssh, %struct.ssh* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %18 = call i32 @debug2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @fatal(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %3
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 8
  br label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i8* [ %27, %26 ], [ %31, %28 ]
  store i8* %33, i8** %13, align 8
  %34 = load %struct.ssh*, %struct.ssh** %6, align 8
  %35 = call i32 @sshpkt_get_cstring(%struct.ssh* %34, i8** %8, i32* null)
  store i32 %35, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.ssh*, %struct.ssh** %6, align 8
  %39 = call i32 @sshpkt_get_cstring(%struct.ssh* %38, i8** %9, i32* null)
  store i32 %39, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %32
  br label %159

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.ssh*, %struct.ssh** %6, align 8
  %51 = load i32, i32* @SSH2_MSG_USERAUTH_REQUEST, align 4
  %52 = call i32 @sshpkt_start(%struct.ssh* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %49
  %55 = load %struct.ssh*, %struct.ssh** %6, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @sshpkt_put_cstring(%struct.ssh* %55, i8* %58)
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %54
  %62 = load %struct.ssh*, %struct.ssh** %6, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @sshpkt_put_cstring(%struct.ssh* %62, i8* %65)
  store i32 %66, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = load %struct.ssh*, %struct.ssh** %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sshpkt_put_cstring(%struct.ssh* %69, i8* %74)
  store i32 %75, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load %struct.ssh*, %struct.ssh** %6, align 8
  %79 = call i32 @sshpkt_put_u8(%struct.ssh* %78, i32 1)
  store i32 %79, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %68, %61, %54, %49
  br label %159

82:                                               ; preds = %77
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @snprintf(i8* %83, i32 256, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %90 = call i8* @read_passphrase(i8* %89, i32 0)
  store i8* %90, i8** %10, align 8
  %91 = load %struct.ssh*, %struct.ssh** %6, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @sshpkt_put_cstring(%struct.ssh* %91, i8* %92)
  store i32 %93, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %159

96:                                               ; preds = %82
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = call i32 @freezero(i8* %97, i64 %99)
  store i8* null, i8** %10, align 8
  br label %101

101:                                              ; preds = %136, %96
  %102 = load i8*, i8** %10, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @snprintf(i8* %105, i32 256, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %108, i8* %109)
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %112 = load i32, i32* @RP_ALLOW_EOF, align 4
  %113 = call i8* @read_passphrase(i8* %111, i32 %112)
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %159

117:                                              ; preds = %104
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @snprintf(i8* %118, i32 256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %121, i8* %122)
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %125 = call i8* @read_passphrase(i8* %124, i32 0)
  store i8* %125, i8** %11, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = call i64 @strcmp(i8* %126, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %117
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = call i32 @freezero(i8* %131, i64 %133)
  %135 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i8* null, i8** %10, align 8
  br label %136

136:                                              ; preds = %130, %117
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = call i64 @strlen(i8* %138)
  %140 = call i32 @freezero(i8* %137, i64 %139)
  br label %101

141:                                              ; preds = %101
  %142 = load %struct.ssh*, %struct.ssh** %6, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @sshpkt_put_cstring(%struct.ssh* %142, i8* %143)
  store i32 %144, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load %struct.ssh*, %struct.ssh** %6, align 8
  %148 = call i32 @sshpkt_add_padding(%struct.ssh* %147, i32 64)
  store i32 %148, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load %struct.ssh*, %struct.ssh** %6, align 8
  %152 = call i32 @sshpkt_send(%struct.ssh* %151)
  store i32 %152, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %146, %141
  br label %159

155:                                              ; preds = %150
  %156 = load %struct.ssh*, %struct.ssh** %6, align 8
  %157 = load i32, i32* @SSH2_MSG_USERAUTH_PASSWD_CHANGEREQ, align 4
  %158 = call i32 @ssh_dispatch_set(%struct.ssh* %156, i32 %157, i32 (i32, i32, %struct.ssh*)* @input_userauth_passwd_changereq)
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %155, %154, %116, %95, %81, %41
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i8*, i8** %10, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = call i32 @freezero(i8* %163, i64 %165)
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i32, i32* %14, align 4
  ret i32 %172
}

declare dso_local i32 @debug2(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @sshpkt_get_cstring(%struct.ssh*, i8**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @logit(i8*, ...) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_cstring(%struct.ssh*, i8*) #1

declare dso_local i32 @sshpkt_put_u8(%struct.ssh*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @freezero(i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sshpkt_add_padding(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32 (i32, i32, %struct.ssh*)*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
