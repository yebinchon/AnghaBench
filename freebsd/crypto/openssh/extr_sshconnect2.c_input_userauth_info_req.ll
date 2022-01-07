; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_info_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_info_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"input_userauth_info_req\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"input_userauth_info_req: no authentication context\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SSH2_MSG_USERAUTH_INFO_RESPONSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"input_userauth_info_req: num_prompts %d\00", align 1
@RP_ECHO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_userauth_info_req(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %17 = load %struct.ssh*, %struct.ssh** %6, align 8
  %18 = getelementptr inbounds %struct.ssh, %struct.ssh* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.ssh*, %struct.ssh** %6, align 8
  %29 = call i32 @sshpkt_get_cstring(%struct.ssh* %28, i8** %8, i32* null)
  store i32 %29, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load %struct.ssh*, %struct.ssh** %6, align 8
  %33 = call i32 @sshpkt_get_cstring(%struct.ssh* %32, i8** %9, i32* null)
  store i32 %33, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.ssh*, %struct.ssh** %6, align 8
  %37 = call i32 @sshpkt_get_cstring(%struct.ssh* %36, i8** %10, i32* null)
  store i32 %37, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %25
  br label %123

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @logit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @logit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.ssh*, %struct.ssh** %6, align 8
  %56 = call i32 @sshpkt_get_u32(%struct.ssh* %55, i64* %14)
  store i32 %56, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %123

59:                                               ; preds = %54
  %60 = load %struct.ssh*, %struct.ssh** %6, align 8
  %61 = load i32, i32* @SSH2_MSG_USERAUTH_INFO_RESPONSE, align 4
  %62 = call i32 @sshpkt_start(%struct.ssh* %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.ssh*, %struct.ssh** %6, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @sshpkt_put_u32(%struct.ssh* %65, i64 %66)
  store i32 %67, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  br label %123

70:                                               ; preds = %64
  %71 = load i64, i64* %14, align 8
  %72 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  store i64 0, i64* %15, align 8
  br label %73

73:                                               ; preds = %108, %70
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load %struct.ssh*, %struct.ssh** %6, align 8
  %79 = call i32 @sshpkt_get_cstring(%struct.ssh* %78, i8** %11, i32* null)
  store i32 %79, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.ssh*, %struct.ssh** %6, align 8
  %83 = call i32 @sshpkt_get_u8(%struct.ssh* %82, i64* %13)
  store i32 %83, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  br label %123

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @RP_ECHO, align 4
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = call i8* @read_passphrase(i8* %87, i32 %94)
  store i8* %95, i8** %12, align 8
  %96 = load %struct.ssh*, %struct.ssh** %6, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @sshpkt_put_cstring(%struct.ssh* %96, i8* %97)
  store i32 %98, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %123

101:                                              ; preds = %93
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = call i32 @freezero(i8* %102, i64 %104)
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %108

108:                                              ; preds = %101
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %15, align 8
  br label %73

111:                                              ; preds = %73
  %112 = load %struct.ssh*, %struct.ssh** %6, align 8
  %113 = call i32 @sshpkt_get_end(%struct.ssh* %112)
  store i32 %113, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load %struct.ssh*, %struct.ssh** %6, align 8
  %117 = call i32 @sshpkt_add_padding(%struct.ssh* %116, i32 64)
  store i32 %117, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %111
  br label %123

120:                                              ; preds = %115
  %121 = load %struct.ssh*, %struct.ssh** %6, align 8
  %122 = call i32 @sshpkt_send(%struct.ssh* %121)
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %119, %100, %85, %69, %58, %39
  %124 = load i8*, i8** %12, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = call i32 @freezero(i8* %127, i64 %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i32, i32* %16, align 4
  ret i32 %140
}

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @sshpkt_get_cstring(%struct.ssh*, i8**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @logit(i8*, i8*) #1

declare dso_local i32 @sshpkt_get_u32(%struct.ssh*, i64*) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_u32(%struct.ssh*, i64) #1

declare dso_local i32 @sshpkt_get_u8(%struct.ssh*, i64*) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @sshpkt_put_cstring(%struct.ssh*, i8*) #1

declare dso_local i32 @freezero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i32 @sshpkt_add_padding(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
