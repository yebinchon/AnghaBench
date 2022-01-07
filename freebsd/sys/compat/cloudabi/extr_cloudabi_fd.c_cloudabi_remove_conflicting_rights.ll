; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_remove_conflicting_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_remove_conflicting_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOUDABI_RIGHT_FD_STAT_PUT_FLAGS = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_SYNC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_ADVISE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_CREATE_DIRECTORY = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_CREATE_FILE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_LINK_SOURCE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_LINK_TARGET = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_OPEN = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_READDIR = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_READLINK = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_RENAME_SOURCE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_RENAME_TARGET = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_FGET = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_FPUT_TIMES = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_GET = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_PUT_TIMES = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_SYMLINK = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_UNLINK = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_POLL_FD_READWRITE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_DATASYNC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_READ = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_SEEK = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_TELL = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_WRITE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_ALLOCATE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_MEM_MAP = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_MEM_MAP_EXEC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_PROC_EXEC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_SOCK_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cloudabi_remove_conflicting_rights(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %184 [
    i32 133, label %8
    i32 132, label %109
    i32 131, label %118
    i32 130, label %154
    i32 129, label %169
    i32 128, label %169
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @CLOUDABI_RIGHT_FD_STAT_PUT_FLAGS, align 4
  %10 = load i32, i32* @CLOUDABI_RIGHT_FD_SYNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CLOUDABI_RIGHT_FILE_ADVISE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CLOUDABI_RIGHT_FILE_CREATE_DIRECTORY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CLOUDABI_RIGHT_FILE_CREATE_FILE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CLOUDABI_RIGHT_FILE_LINK_SOURCE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CLOUDABI_RIGHT_FILE_LINK_TARGET, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CLOUDABI_RIGHT_FILE_OPEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CLOUDABI_RIGHT_FILE_READDIR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CLOUDABI_RIGHT_FILE_READLINK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CLOUDABI_RIGHT_FILE_RENAME_SOURCE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CLOUDABI_RIGHT_FILE_RENAME_TARGET, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FGET, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_TIMES, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_GET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_PUT_TIMES, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CLOUDABI_RIGHT_FILE_SYMLINK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CLOUDABI_RIGHT_FILE_UNLINK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CLOUDABI_RIGHT_POLL_FD_READWRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @CLOUDABI_RIGHT_FD_DATASYNC, align 4
  %50 = load i32, i32* @CLOUDABI_RIGHT_FD_READ, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CLOUDABI_RIGHT_FD_SEEK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CLOUDABI_RIGHT_FD_STAT_PUT_FLAGS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CLOUDABI_RIGHT_FD_SYNC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CLOUDABI_RIGHT_FD_TELL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CLOUDABI_RIGHT_FD_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CLOUDABI_RIGHT_FILE_ADVISE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CLOUDABI_RIGHT_FILE_ALLOCATE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CLOUDABI_RIGHT_FILE_CREATE_DIRECTORY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CLOUDABI_RIGHT_FILE_CREATE_FILE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CLOUDABI_RIGHT_FILE_LINK_SOURCE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CLOUDABI_RIGHT_FILE_LINK_TARGET, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CLOUDABI_RIGHT_FILE_OPEN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CLOUDABI_RIGHT_FILE_READDIR, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CLOUDABI_RIGHT_FILE_READLINK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CLOUDABI_RIGHT_FILE_RENAME_SOURCE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CLOUDABI_RIGHT_FILE_RENAME_TARGET, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FGET, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_TIMES, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_GET, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_PUT_TIMES, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @CLOUDABI_RIGHT_FILE_SYMLINK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CLOUDABI_RIGHT_FILE_UNLINK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CLOUDABI_RIGHT_MEM_MAP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CLOUDABI_RIGHT_MEM_MAP_EXEC, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CLOUDABI_RIGHT_POLL_FD_READWRITE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CLOUDABI_RIGHT_PROC_EXEC, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %186

109:                                              ; preds = %3
  %110 = load i32, i32* @CLOUDABI_RIGHT_FILE_ADVISE, align 4
  %111 = load i32, i32* @CLOUDABI_RIGHT_POLL_FD_READWRITE, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 0, i32* %117, align 4
  br label %186

118:                                              ; preds = %3
  %119 = load i32, i32* @CLOUDABI_RIGHT_FD_DATASYNC, align 4
  %120 = load i32, i32* @CLOUDABI_RIGHT_FD_READ, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @CLOUDABI_RIGHT_FD_SEEK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @CLOUDABI_RIGHT_FD_STAT_PUT_FLAGS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @CLOUDABI_RIGHT_FD_SYNC, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @CLOUDABI_RIGHT_FD_TELL, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @CLOUDABI_RIGHT_FD_WRITE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @CLOUDABI_RIGHT_FILE_ADVISE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @CLOUDABI_RIGHT_FILE_ALLOCATE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FGET, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_TIMES, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @CLOUDABI_RIGHT_MEM_MAP, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @CLOUDABI_RIGHT_MEM_MAP_EXEC, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @CLOUDABI_RIGHT_POLL_FD_READWRITE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @CLOUDABI_RIGHT_PROC_EXEC, align 4
  %149 = or i32 %147, %148
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = load i32*, i32** %6, align 8
  store i32 0, i32* %153, align 4
  br label %186

154:                                              ; preds = %3
  %155 = load i32, i32* @CLOUDABI_RIGHT_FD_SEEK, align 4
  %156 = load i32, i32* @CLOUDABI_RIGHT_FD_TELL, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @CLOUDABI_RIGHT_FILE_ADVISE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @CLOUDABI_RIGHT_FILE_ALLOCATE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @CLOUDABI_RIGHT_FILE_READDIR, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %6, align 8
  store i32 0, i32* %168, align 4
  br label %186

169:                                              ; preds = %3, %3
  %170 = load i32, i32* @CLOUDABI_RIGHT_FD_READ, align 4
  %171 = load i32, i32* @CLOUDABI_RIGHT_FD_STAT_PUT_FLAGS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @CLOUDABI_RIGHT_FD_WRITE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FGET, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @CLOUDABI_RIGHT_POLL_FD_READWRITE, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @CLOUDABI_RIGHT_SOCK_SHUTDOWN, align 4
  %180 = or i32 %178, %179
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %180
  store i32 %183, i32* %181, align 4
  br label %186

184:                                              ; preds = %3
  %185 = load i32*, i32** %6, align 8
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %184, %169, %154, %118, %109, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
