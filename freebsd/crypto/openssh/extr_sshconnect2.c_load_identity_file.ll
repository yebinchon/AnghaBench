; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_load_identity_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_load_identity_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.sshkey = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i64, i64, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no such identity: %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Enter passphrase for key '%.100s': \00", align 1
@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"no passphrase given, try next key\00", align 1
@KEY_UNSPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"bad passphrase given, try again...\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Load key \22%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sshkey* (%struct.TYPE_4__*)* @load_identity_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sshkey* @load_identity_file(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.sshkey*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca [300 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.sshkey* null, %struct.sshkey** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %12)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 (i8*, i8*, i32)* @logit, i32 (i8*, i8*, i32)* @debug3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 %24(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  store %struct.sshkey* null, %struct.sshkey** %2, align 8
  br label %146

31:                                               ; preds = %1
  %32 = getelementptr inbounds [300 x i8], [300 x i8]* %5, i64 0, i64 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %32, i32 300, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %141, %31
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %144

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %57

45:                                               ; preds = %41
  %46 = getelementptr inbounds [300 x i8], [300 x i8]* %5, i64 0, i64 0
  %47 = call i8* @read_passphrase(i8* %46, i32 0)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @free(i8* %54)
  br label %144

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* @KEY_UNSPEC, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @sshkey_load_private_type(i32 %58, i8* %61, i8* %62, %struct.sshkey** %4, i8** %7, i32* %9)
  store i32 %63, i32* %8, align 4
  switch i32 %63, label %87 [
    i32 0, label %64
    i32 129, label %65
    i32 128, label %75
  ]

64:                                               ; preds = %57
  br label %94

65:                                               ; preds = %57
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  br label %94

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  br label %94

75:                                               ; preds = %57
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @ssh_err(i32 %83)
  %85 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %84)
  store i32 1, i32* %10, align 4
  br label %94

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %57, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @ssh_err(i32 %91)
  %93 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %92)
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %87, %79, %74, %68, %64
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %94
  %98 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %99 = icmp ne %struct.sshkey* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @maybe_add_key_to_agent(i8* %118, %struct.sshkey* %119, i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %115, %110, %100, %97, %94
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = call i32 @freezero(i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %135 = icmp ne %struct.sshkey* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136, %131
  br label %144

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %37

144:                                              ; preds = %139, %52, %37
  %145 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  store %struct.sshkey* %145, %struct.sshkey** %2, align 8
  br label %146

146:                                              ; preds = %144, %18
  %147 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  ret %struct.sshkey* %147
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @logit(i8*, i8*, i32) #1

declare dso_local i32 @debug3(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshkey_load_private_type(i32, i8*, i8*, %struct.sshkey**, i8**, i32*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @maybe_add_key_to_agent(i8*, %struct.sshkey*, i8*, i8*) #1

declare dso_local i32 @freezero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
