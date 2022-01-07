; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_list_identities.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_list_identities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_identitylist = type { i64, i8**, i32* }

@SSH_ERR_AGENT_NO_IDENTITIES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error fetching identities: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"The agent has no identities.\0A\00", align 1
@fingerprint_hash = common dso_local global i32 0, align 4
@SSH_FP_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%u %s %s (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"sshkey_write: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" [signatures left %d]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @list_identities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_identities(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssh_identitylist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ssh_fetch_identitylist(i32 %11, %struct.ssh_identitylist** %8)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SSH_ERR_AGENT_NO_IDENTITIES, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @ssh_err(i32 %20)
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %25

23:                                               ; preds = %14
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  store i32 -1, i32* %3, align 4
  br label %123

26:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %117, %26
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %30 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %120

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %38 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @fingerprint_hash, align 4
  %44 = load i32, i32* @SSH_FP_DEFAULT, align 4
  %45 = call i8* @sshkey_fingerprint(i32 %42, i32 %43, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %47 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sshkey_size(i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %58

56:                                               ; preds = %36
  %57 = load i8*, i8** %6, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %55 ], [ %57, %56 ]
  %60 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %61 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %67 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @sshkey_type(i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %59, i8* %65, i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  br label %116

76:                                               ; preds = %33
  %77 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %78 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @sshkey_write(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32, i32* @stderr, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i8* @ssh_err(i32 %88)
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  br label %117

91:                                               ; preds = %76
  %92 = load i32, i32* @stdout, align 4
  %93 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %94 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %101 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @sshkey_signatures_left(i32 %105)
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %91
  %110 = load i32, i32* @stdout, align 4
  %111 = load i64, i64* %9, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %109, %91
  %114 = load i32, i32* @stdout, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %58
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  br label %27

120:                                              ; preds = %27
  %121 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %8, align 8
  %122 = call i32 @ssh_free_identitylist(%struct.ssh_identitylist* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %25
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ssh_fetch_identitylist(i32, %struct.ssh_identitylist**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sshkey_fingerprint(i32, i32, i32) #1

declare dso_local i32 @sshkey_size(i32) #1

declare dso_local i8* @sshkey_type(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshkey_write(i32, i32) #1

declare dso_local i64 @sshkey_signatures_left(i32) #1

declare dso_local i32 @ssh_free_identitylist(%struct.ssh_identitylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
