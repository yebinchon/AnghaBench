; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_delete_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Bad key file %s: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Identity removed: %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not remove identity \22%s\22: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s-cert.pub\00", align 1
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to load certificate \22%s\22: %s\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Certificate %s does not match private key %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @delete_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_file(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sshkey*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sshkey* null, %struct.sshkey** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @sshkey_load_public(i8* %16, %struct.sshkey** %10, i8** %13)
  store i32 %17, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call i8* @ssh_err(i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %110

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.sshkey*, %struct.sshkey** %10, align 8
  %27 = call i32 @ssh_remove_identity(i32 %25, %struct.sshkey* %26)
  store i32 %27, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %29
  store i32 0, i32* %15, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @ssh_err(i32 %41)
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %42)
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %100

48:                                               ; preds = %44
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @free(i8* %49)
  store i8* null, i8** %13, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @xasprintf(i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @sshkey_load_public(i8* %53, %struct.sshkey** %11, i8** %13)
  store i32 %54, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %56
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i8* @ssh_err(i32 %66)
  %68 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %65, i8* %67)
  br label %69

69:                                               ; preds = %64, %60
  br label %100

70:                                               ; preds = %48
  %71 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %72 = load %struct.sshkey*, %struct.sshkey** %10, align 8
  %73 = call i32 @sshkey_equal_public(%struct.sshkey* %71, %struct.sshkey* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %82 = call i32 @ssh_remove_identity(i32 %80, %struct.sshkey* %81)
  store i32 %82, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %84
  store i32 0, i32* %15, align 4
  br label %99

93:                                               ; preds = %79
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i8* @ssh_err(i32 %96)
  %98 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %97)
  br label %99

99:                                               ; preds = %93, %92
  br label %100

100:                                              ; preds = %99, %69, %47
  %101 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %102 = call i32 @sshkey_free(%struct.sshkey* %101)
  %103 = load %struct.sshkey*, %struct.sshkey** %10, align 8
  %104 = call i32 @sshkey_free(%struct.sshkey* %103)
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %100, %19
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @sshkey_load_public(i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @ssh_remove_identity(i32, %struct.sshkey*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @sshkey_equal_public(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @fatal(i8*, i8*, i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
