; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_change_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_change_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.stat = type { i32 }
%struct.sshkey = type { i32 }

@have_identity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter file in which the key is\00", align 1
@identity_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSH_ERR_KEY_WRONG_PASSPHRASE = common dso_local global i32 0, align 4
@identity_passphrase = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Enter old passphrase: \00", align 1
@RP_ALLOW_STDIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to load key %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Key has comment '%s'\0A\00", align 1
@identity_new_passphrase = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"Enter new passphrase (empty for no passphrase): \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Enter same passphrase again: \00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Pass phrases do not match.  Try again.\0A\00", align 1
@use_new_format = common dso_local global i32 0, align 4
@new_format_cipher = common dso_local global i32 0, align 4
@rounds = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Saving key \22%s\22 failed: %s.\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Your identification has been saved with the new passphrase.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @do_change_passphrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_change_passphrase(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %10 = load i32, i32* @have_identity, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.passwd*, %struct.passwd** %2, align 8
  %14 = call i32 @ask_filename(%struct.passwd* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @identity_file, align 4
  %17 = call i64 @stat(i32 %16, %struct.stat* %7)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @identity_file, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @identity_file, align 4
  %26 = call i32 @sshkey_load_private(i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.sshkey** %8, i8** %3)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i64, i64* @identity_passphrase, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @identity_passphrase, align 8
  %35 = call i8* @xstrdup(i64 %34)
  store i8* %35, i8** %4, align 8
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %38 = call i8* @read_passphrase(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @identity_file, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @sshkey_load_private(i32 %40, i8* %41, %struct.sshkey** %8, i8** %3)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @explicit_bzero(i8* %43, i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %57

52:                                               ; preds = %39
  br label %63

53:                                               ; preds = %24
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* @identity_file, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @ssh_err(i32 %59)
  %61 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %60)
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i8*, i8** %3, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* @identity_new_passphrase, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* @identity_new_passphrase, align 8
  %74 = call i8* @xstrdup(i64 %73)
  store i8* %74, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %106

75:                                               ; preds = %69
  %76 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %77 = call i8* @read_passphrase(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  store i8* %77, i8** %5, align 8
  %78 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %79 = call i8* @read_passphrase(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %75
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @explicit_bzero(i8* %85, i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @explicit_bzero(i8* %89, i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @free(i8* %95)
  %97 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %75
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i32 @explicit_bzero(i8* %100, i32 %102)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %99, %72
  %107 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %108 = load i32, i32* @identity_file, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* @use_new_format, align 4
  %112 = load i32, i32* @new_format_cipher, align 4
  %113 = load i32, i32* @rounds, align 4
  %114 = call i32 @sshkey_save_private(%struct.sshkey* %107, i32 %108, i8* %109, i8* %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %106
  %117 = load i32, i32* @identity_file, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i8* @ssh_err(i32 %118)
  %120 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %117, i8* %119)
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = call i32 @explicit_bzero(i8* %121, i32 %123)
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %128 = call i32 @sshkey_free(%struct.sshkey* %127)
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @free(i8* %129)
  %131 = call i32 @exit(i32 1) #3
  unreachable

132:                                              ; preds = %106
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = call i32 @explicit_bzero(i8* %133, i32 %135)
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %140 = call i32 @sshkey_free(%struct.sshkey* %139)
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 @free(i8* %141)
  %143 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %144 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ask_filename(%struct.passwd*, i8*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sshkey_load_private(i32, i8*, %struct.sshkey**, i8**) #1

declare dso_local i8* @xstrdup(i64) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @mprintf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sshkey_save_private(%struct.sshkey*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
